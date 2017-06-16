class LaptopsController < ApplicationController
  def index
  end
  def new
  @laptop=Laptop.new 
  end
  def create
  #debugger
  @laptop=Laptop.new 
  @laptop = Laptop.new(params_detail)
  end
  private
  def params_detail
  	params.require(:laptop).permit!
  end
end
