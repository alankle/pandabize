class Api::V1::ValuesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :find_values, only: %i[index show update destroy]
  before_action :find_value, only: %i[show update destroy]

  def index
    render json: @values
  end

  # GET /bike/:id
  def show
    render json: @value
  end

  # POST /bike
  # todo: implementar transacciones
  def create
    @new_value = Value.new(value_params)

    if @new_value.save
      if params[:bike_id] && params[:option_id]
        ValueAvailable.create(option_available_id: params[:option_id], value_id: @new_value.id)
      end
      render json: @new_value
    else
      render error: { error: 'No puedo crear el nuevo valor' }, status: 400
    end
  end

  # PUT /bikes/:id
  def update
    if @value
      @value.update(value_params)
      render json: { message: 'El valor ha sido modificada' }, status: 200
    else
      render json: { error: 'NO se ha podido modificar el valor' }, status: 400
    end
  end

  # DELETE /bikes/:id transacciones
  def destroy
    if params[:option_id]
      @valueAvailable = ValueAvailable.find_by_value_id(params[:id])
      @valueAvailable.destroy
    end

    if @value
      @value.destroy
      render json: { message: 'El valor ha sido borrada' }, status: 200
    else
      render json: { error: 'NO se ha podido borrar el valor' }, status: 400
    end
  end

  private

  def value_params
    params.permit(:description)
  end

  def find_values
    if params[:bike_id] && params[:option_id]
      @option_availables = Bike.find(params[:bike_id]).optionAvailables.find_by_option_id(params[:option_id])
      @values = @option_availables.values
    else
      @values = Value.all
    end
  end

  def find_value
    find_values
    @value = @values.find(params[:id])
  end
end
