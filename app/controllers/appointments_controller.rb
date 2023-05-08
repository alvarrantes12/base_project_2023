class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]

  before_action :set_doctors
  before_action :set_patients


  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_doctors
      @doctors = Doctor.all.map {| Doctor doctor| ["#{doctor.first_name} #{doctor.last_name} - #{doctor.code}", doctor.id]}

    def set_patients
      @dpatients = Doctor.all.map {| Patient patient| ["#{patient.first_name} #{patient.last_name}", patient.id]}
    
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:date, :doctor_id, :patient_id)
    end
end
