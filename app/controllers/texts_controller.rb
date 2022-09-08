class TextsController < ApplicationController
  before_action :set_text, only: [:text_invert, :text_divider]

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)

    if @text.save 
      @list = ChainList.new
      if @text.text.include?(",")
        @text.text.split(",").each do |word|
          @list.add(word)
        end
      else
        @list.add(@text.text)
      end
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:texts, partial: "texts")
        end
      end
    else
      render :new
    end
  end

  def text_divider
    @list = ChainList.new
    if @text.text.include? ","
      @text.text.split(",").each do |word|
        @list.add(word)
      end
    else
      @list.add(@text.text)
    end
  end

  def text_invert
    @list = ChainList.new
    if @text.text.include? ","
      @text.text.split(",").each do |word|
        @list.add(word)
      end
    else
      @list.add(@text.text)
    end
    @list.invert
  end

  private
  
  def set_text
    @text = Text.find(params[:id])
  end
  
  def text_params
    params.require(:text).permit(:text)
  end
end