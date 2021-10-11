class ReviewsController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @reviews = @album.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to album_reviews_path(@review.album)
    else
      @album = Album.find(params[:id])
      render "albums/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:album_id, :score, :content)
  end
end
