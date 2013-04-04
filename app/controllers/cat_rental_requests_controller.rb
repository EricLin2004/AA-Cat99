class CatRentalRequestsController < ApplicationController
  def index
    @cat_rental_request = CatRentalRequest.all
  end

  def create
    puts params
    @cat_rental_request = CatRentalRequest.new(params[:cat_rental_request])
    if @cat_rental_request.save
      redirect_to cat_path(@cat_rental_request.cat)
    else
      redirect_to new_cat_rental_request_path + "?id=" + params[:cat_rental_request][:cat_id]
    end
  end

  def new
    @cat_id = params[:id]
    @cat_rental_request = CatRentalRequest.new
  end

  def update
    @cat_rental_request = CatRentalRequest.find(params[:id])
    @cat_rental_request.update_attributes(params[:cat_rental_request])
    redirect_to cat_rental_request_path(@cat_rental_request)
  end

  def show
    @cat_rental_request = CatRentalRequest.find(params[:id])
  end

  def edit
    @cat_rental_request = CatRentalRequest.find(params[:id])
  end
end
