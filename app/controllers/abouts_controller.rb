class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @abouts = About.all
    respond_with(@abouts)
  end

  def show
    respond_with(@about)
  end

  def new
    @about = About.new
    respond_with(@about)
  end

  def edit
  end  

  def create
    @about = About.new(name: "Default")

    respond_to do |format|
      if @about.save
        format.html { redirect_to :abouts, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: abouts_path }
      else
        format.html { render :new }
        format.json { render json: abouts_path.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to :abouts, notice: 'Person was successfully updated.' }
        format.json { respond_with_bip(@about) }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @about.destroy
    respond_with(@about)
  end

  private
    def set_about
      @about = About.find(params[:id])
    end

    def about_params
      params.require(:about).permit(:image, :description, :name, :email, :phone)
    end
end
