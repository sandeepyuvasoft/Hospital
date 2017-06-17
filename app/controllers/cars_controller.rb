class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def sandeep
  end
  def new
  	@car=Car.new
  end
  def create
    @car=Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end
  private
  def car_params
  	#params.require(:article).permit!
  	params.require(:car).permit(:name, pic: [])
  end
end
