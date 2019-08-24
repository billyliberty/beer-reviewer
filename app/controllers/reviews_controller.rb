class ReviewsController < ApplicationController

    before_action :require_login

    def index
    end

    def show
    end

    def new
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
