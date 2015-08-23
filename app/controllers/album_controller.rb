class AlbumController < ApplicationController
  def show
    @albums = Album.all
  end
end
