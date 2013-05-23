class ScreencastsController < ApplicationController
  # GET /screencasts
  # GET /screencasts.json
  def index
    render json: Screencast.all
  end

  # GET /screencasts/:id
  # GET /screencasts/:id.json
  def show
    render json: Screencast.find(params[:id])
  end
end
