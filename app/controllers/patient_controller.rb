class PatientController < ApplicationController
  layout 'application'
  def list
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update_attributes(patient_param)
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def delete
    Patient.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def patient_params
    params.require(:patients).permit(:firstname, :middlename, :lastname, :weight, :height, :mrn)
  end

  def patient_param
    params.require(:patient).permit(:firstname, :middlename, :lastname, :weight, :height, :mrn)
  end
end
