class PatientsController < ApplicationController
  def index
  	@patient=Patient.all
  end
  def new
  	@patient=Patient.new
  end
  def create
    @patient=Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      render 'new'
    end
  end
  private
  def patient_params
  	params.require(:patient).permit!
  end
end
