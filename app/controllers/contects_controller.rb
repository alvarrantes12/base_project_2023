class ContectsController < ApplicationController
  before_action :set_contect, only: %i[ show edit update destroy ]


  def index
    @contects = Contect.all
  end


  def show;end


  def new
    @contect = Contect.new
  end


  def edit; end

  
  def create
    @contect = Contect.new(contect_params)

    respond_to do |format|
      if @contect.save
        format.html { redirect_to contect_url(@contect), notice: "Contect was successfully created." }
       
      else
        format.html { render :new, status: :unprocessable_entity }
       
      end
    end
  end

 
  def update
    respond_to do |format|
      if @contect.update(contect_params)
        format.html { redirect_to contect_url(@contect), notice: "Contect was successfully updated." }
        format.json { render :show, status: :ok, location: @contect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contect.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @contect.destroy

    respond_to do |format|
      format.html { redirect_to contects_url, notice: "Contect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_contect
      @contect = Contect.find(params[:id])
    end

    def contect_params
      params.require(:contect).permit(:title, :description, :text, :start_date, :end_date_datetime)
    end
end
