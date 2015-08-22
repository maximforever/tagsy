class TracksController < ApplicationController


  def index
    @all_tracks = Track.all
    @new_track = Track.new
  end
    
  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to root_path
    else
      render root_path
    end
  end

  def show
    @track = Track.find(params[:id])
  end


  private

  def track_params
    params.require(:track).permit(:name,:artist,:album,:year_written)
  end


end
