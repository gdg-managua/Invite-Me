class SpeakersController < ApplicationController

  def new
    @speaker = Speaker.new
  end

  def create
    if @speaker.valid?
      @speaker = Speaker.new(secure_params)
    else
      render :new
    end
  end
  
  private

  def secure_params
    params.require(:speaker).permit(:bio,:name)
  end
end