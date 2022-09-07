class TextsController < ApplicationController
  before_action :set_text, only: [:show, :text_invert, :text_divider]

  def new
    @text = Text.new
  end

  def create
    @text = Text.new(text_params)

    if @text.save
      redirect_to text_path(@text)
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
      @list.invert
    end
  end

  private
  
  def set_text
    @text = Text.find(params[:id])
  end
  
  def text_params
    params.require(:text).permit(:text)
  end
end