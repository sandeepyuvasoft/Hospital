class DoctorsController < ApplicationController
  def index
  	@doctor=Doctor.all
  end
  def new
  	@doctor=Doctor.new
  end
  def create
    @doctor=Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path
    else
      render 'new'
    end
  end
  private
  def doctor_params
  	#params.require(:doctor).permit!
    params.require(:doctor).permit(:name, :address, :contact,:pic)
  end
end
