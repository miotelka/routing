class PatientsController < ApplicationController
  def show
      @patient = Patient.find(params[:id])
  end

  def new
      @patient = Patient.new
  end

  def create
      @patient = Patient.new(patient_params)
      if @patient.save
          redirect_to @patient, notice: 'Patient was successfully created'
        else
            render action: 'new'
      end
  end
    
    private
    
    def patient_params
        params.require(:patient).permit(:name, :surname)
    end
end
