class TalksController < ApplicationController

  def new
    @talk = Talks.new
  end
end