class ReviewsController < ApplicationController

    before_action :require_login

    def index
        if params[:beer_id]
            @review = Beer.find(params[:beer_id]).review 
        else
            @review = Review.all 
        end
    end

    def show
    end

    def new
        if params[:beer_id]
            redirect_to beers_path
    end

    def create
    end

    def edit
    end

    private

    def review_params
        params.require(:review).permit(:rating, :review, :price, :store, :date_of_purchase)
    end
    
end
