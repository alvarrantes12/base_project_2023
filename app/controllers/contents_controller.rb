class ContentsController < ApplicationController
  before_action :set_content, only: %i[ show edit update destroy ]

  def index
    @contents = Content.all
  end

  def show; end

  def new
    @content = Content.new
  end

  def edit ; end

  def create
    @content = Content.new(content_params)

    respond_to do |format|
      if @content.save
        format.html { redirect_to content_url(@content), notice: t('activerecord.modules.content.one')+" "+ t('messages.success.successfully_created') }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @content.update(content_params)
        format.html { redirect_to content_url(@content), notice: t('activerecord.modules.content.one')+" "+ t('messages.success.successfully_updated') }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @content.destroy

    respond_to do |format|
      format.html { redirect_to contents_url, notice: t('activerecord.modules.content.one')+" "+ t('messages.success.successfully_destroy') }
    end
  end

  private
    def set_content
      @content = Content.find(params[:id])
    end

    def content_params
      params.require(:content).permit(:title, :description, :start_date, :end_date, :special_type)
    end
end
