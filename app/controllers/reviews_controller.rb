class ReviewsController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

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
      # redirect_to( attraction_path(@review.attraction) )
      render json: @review, include: {user: {only: 'name'} }
    else
    render :new
    end
  end

  def index
    # @reviews = Review.all
    render json: Review.all
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


    if @review.user == @current_user &&  @current_user.present?

      @review.destroy
    end
    redirect_to (attraction_path(@review.attraction))
  end


  private
  # strong params, the doorman for the form fields
  def review_params
    params.require(:review).permit( :comment, :attraction_id)
  end

end
