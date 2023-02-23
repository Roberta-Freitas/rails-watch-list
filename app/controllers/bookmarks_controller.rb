class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(bookmark_id)
    else
      render :new
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :list_id, :comment)
  end
end
