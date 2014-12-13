class BpasController < ApplicationController
  before_action :set_bpa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bpas = Bpa.all
    respond_with(@bpas)
  end

  def show
    respond_with(@bpa)
  end

  def new
    @bpa = Bpa.new
    respond_with(@bpa)
  end

  def edit
  end

  def create
    @bpa = Bpa.new(bpa_params)
    @bpa.save
    respond_with(@bpa)
  end

  def update
    @bpa.update(bpa_params)
    respond_with(@bpa)
  end

  def destroy
    @bpa.destroy
    respond_with(@bpa)
  end

  private
    def set_bpa
      @bpa = Bpa.find(params[:id])
    end

    def bpa_params
      params[:bpa]
    end
end
