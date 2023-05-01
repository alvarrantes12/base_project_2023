class PatienesController < ApplicationController
  before_action :set_patiene, only: %i[ show edit update destroy ]

  def index
    @patienes = Patiene.all
  end

  def show; end

  def new
    @patiene = Patiene.new
  end

  def edit; end

  def create
    @patiene = Patiene.new(patiene_params)

    respond_to do |format|
      if @patiene.save
        format.html { redirect_to patiene_url(@patiene), notice: "Patiene was successfully created." }
        format.json { render :show, status: :created, location: @patiene }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patiene.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patiene.update(patiene_params)
        format.html { redirect_to patiene_url(@patiene), notice: "Patiene was successfully updated." }
        format.json { render :show, status: :ok, location: @patiene }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patiene.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patiene.destroy

    respond_to do |format|
      format.html { redirect_to patienes_url, notice: "Patiene was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_patiene
      @patiene = Patiene.find(params[:id])
    end

    def patiene_params
      params.require(:patiene).permit(:first_name, :last_name)
    end
end
