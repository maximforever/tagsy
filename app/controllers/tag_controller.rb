class TagController < ApplicationController

  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.new(track_params)
    if @tag.save
      redirect_to root_path
    else
      render root_path
    end
  end

  def show
    @tag = Tag.find(params[:id])
    @tracks = Track.find_by_tag(@tag)
  end


    private

    def tag_params
      params.require(:tag).permit(:name,:track_id)
    end

end
