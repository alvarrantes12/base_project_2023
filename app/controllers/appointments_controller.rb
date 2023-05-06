class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]
  before_action :set_doctors
  before_action :set_patients

  def index
    @appointments = Appointment.all
  end

  def show;end

  def new
    @appointment = Appointment.new
  end

  def edit;end

  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_url(@appointment), notice: t('activerecord.modules.appointment.one')+" "+ t('messages.success.successfully_created')}
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to appointment_url(@appointment), notice: t('activerecord.modules.appointment.one')+" "+ t('messages.success.successfully_updated') }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url, notice: t('activerecord.modules.appointment.one')+" "+ t('messages.success.successfully_destroy')}
    end
  end

  private

    def set_doctors
      @doctors = Doctor.all.map {|doctor|["#{doctor.first_name} #{doctor.last_name} - #{doctor.code}", doctor.id]}
    end

    def set_patients
      @patients = Patient.all.map {|patient|["#{patient.first_name} #{patient.last_name}",patient.id]}
    end

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
      params.require(:appointment).permit(:date, :doctor_id, :patient_id)
    end
end
