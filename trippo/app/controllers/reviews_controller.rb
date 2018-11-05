class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end


  def create
    @review = Review.create({:comment => params[:comment]})

      if @review.persisted?
        @review.user_id = @current_user.id
        @review.attraction_id = params[:attraction_id]
        @review.save
        # raise "hell"
        redirect_to( attraction_path(@review.attraction) )
      else
      render :new
      end

  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
  end

  def edit

  end

  def update
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to (reviews_path)
  end


  private
  # strong params, the doorman for the form fields
  def review_params
    params.require(:review).permit( :comment, :attraction_id)
  end

end
