class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ show edit update destroy ]

  def index
    @patients = Patient.all
  end

  def show; end

  def new
    @patient = Patient.new
  end

  def edit; end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patient_url(@patient), notice: t('application.create_message', model: t('activerecord.modules.patient.one')) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patient_url(@patient), notice: t('application.update_message', model: t('activerecord.modules.patient.one')) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_url, notice: t('application.delete_message', model: t('activerecord.modules.patient.one')) }
    end
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:first_name, :last_name)
    end
end