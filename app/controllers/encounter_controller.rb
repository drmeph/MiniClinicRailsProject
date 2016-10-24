class EncounterController < ApplicationController
  layout 'application'

  def show
    @encounter = Encounter.find(params[:id])
  end

  def new
    @encounter = Encounter.new
    @encounter.patient_id = params[:patient_id]
  end

  def edit
    @encounter = Encounter.find(params[:id])
  end

  def create
    @encounter = Encounter.new(encounter_params)

    if @encounter.save
      redirect_to :controller => 'patient', :action => 'show', :id => @encounter.patient_id
    else
      render :action => 'new'
    end
  end

  def update
    @encounter = Encounter.find(params[:id])

    if @encounter.update_attributes(encounter_params)
      redirect_to :controller => 'patient', :action => 'show', :id => @encounter.patient_id
    else
      render :action => 'edit'
    end
  end

  def delete
    @encounter = Encounter.find(params[:id])
    patient_id = @encounter.patient_id
    @encounter.destroy
    redirect_to :controller => 'patient', :action => 'show', :id => patient_id
  end

  def encounter_params
    params.require(:encounter).permit(:visitnumber, :admittedat, :discharedat, :location, :room, :bed, :patient_id)
  end
end
