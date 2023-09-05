class SearchesController < ApplicationController
  # POST /searches
  def create
    @search = Search.new(search_params)

    if @search.save
      render json: @search, status: :created
    else
      render json: @search.errors, status: :unprocessable_entity
    end
  end

  # GET /searches
  def index
    @searches = Search.order(created_at: :desc).limit(10) # Example to get the last 10 searches
    render json: @searches
  end

  private

  def search_params
    params.require(:search).permit(:term)
  end
end