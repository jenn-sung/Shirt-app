class V1::ShirtsController < ApplicationController
  def index
    shirts = Shirt.all
    render json: shirts.as_json
  end

  def show
    shirt = Shirt.find_by(id: params[:id])
    render json: shirt.as_json
  end

  def create
    shirt = Shirt.new(
     size: params[:size],
     color: params[:color],
     price: params[:price] 
     )
    if shirt.save
      render json: shirt.as_json
    else
      render json: {errors: shirt.errors.full_messages}
    end
  end

  def update
    shirt = Shirt.find_by(id: params[:id])
    if shirt.update(
     size: params[:size],
     color: params[:color],
     price: params[:price]
    )
      render json: shirt.as_json
    else
      render json: {errors: shirt.errors.full_messages}
    end
  end
end