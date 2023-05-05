class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]

  def index
    @doctors = Doctor.all
  end

  def show; end

  def new
    @doctor = Doctor.new
  end

  def edit; end

  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctor_url(@doctor), notice: t('application.create_message', model: t('activerecord.modules.doctor.one')) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to doctor_url(@doctor), notice: t('application.update_message', model: t('activerecord.modules.doctor.one')) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @doctor.destroy

    respond_to do |format|
      format.html { redirect_to doctors_url, notice: t('application.delete_message', model: t('activerecord.modules.doctor.one')) }
    end
  end

  private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :code)
    end
end