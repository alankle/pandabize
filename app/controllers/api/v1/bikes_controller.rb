class Api::V1::BikesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_bike, only: %i[show update destroy]
  # GET /bikes
  def index
    @bikes = Bike.all
    render json: @bikes
  end

  # GET /bike/:id
  def show
    render json: @bike
  end

  # POST /bikes
  def create
    @bike = Bike.new(bike_params)

    if @bike.save
      render json: @bike
    else
      render error: { error: 'No puedo crear la bici' }, status: 400
    end
  end

  # PUT /bikes/:id
  def update
    if @bike
      @bike.update(bike_params)
      render json: { message: 'La bici ha sido modificada' }, status: 200
    else
      render json: { error: 'NO se ha podido modificar la bici' }, status: 400
    end
  end

  # DELETE /bikes/:id
  def destroy
    if @bike
      @bike.destroy
      render json: { message: 'La bici ha sido borrada' }, status: 200
    else
      render json: { error: 'NO se ha podido borrar la bici' }, status: 400
    end
  end

  private

  def bike_params
    params.permit(:description)
  end

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
