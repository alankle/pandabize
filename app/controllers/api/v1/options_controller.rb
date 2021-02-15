class Api::V1::OptionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_options, only: %i[index show update destroy]
  before_action :find_option, only: %i[show update destroy]

  def index
    render json: @options
  end

  # GET /bike/:id
  def show
    render json: @option
  end

  # POST /bike
  # todo: implementar transacciones
  def create
    @new_option = Option.new(option_params)

    if @new_option.save
      params[:bike_id] || OptionAvailable.create(bike_id: params[:bike_id], option_id: @new_option.id)
      render json: @new_option
    else
      render error: { error: 'No puedo crear la opción' }, status: 400
    end
  end

  # PUT /bikes/:id
  def update
    if @option
      @option.update(option_params)
      render json: { message: 'La opción ha sido modificada' }, status: 200
    else
      render json: { error: 'NO se ha podido modificar la opción' }, status: 400
    end
  end

  # DELETE /bikes/:id transacciones
  def destroy
    if params[:bike_id]
      @optionAvailable = OptionAvailable.find_by_option_id(params[:id])
      @optionAvailable.destroy
    end

    if @option
      @option.destroy
      render json: { message: 'La opcion ha sido borrada' }, status: 200
    else
      render json: { error: 'NO se ha podido borrar la opción' }, status: 400
    end
  end

  private

  def option_params
    params.permit(:description)
  end

  def find_options 
    if params[:bike_id]
      @bike = Bike.find(params[:bike_id])
      @options = @bike.options
    else
      @options = Option.all
    end
  end

  def find_option
    find_options 
    @option = @options.find(params[:id])
  end
end
