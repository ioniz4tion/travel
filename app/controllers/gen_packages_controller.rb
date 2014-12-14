class GenPackagesController < ApplicationController
  before_action :set_gen_package, only: [:show, :edit, :update, :destroy]

  # GET /gen_packages
  # GET /gen_packages.json
  def index
    @gen_packages = GenPackage.all.order(:name)
    @city = GenPackage.find_by_name(params[:city])
    @slideshow = []
    GenPackage.all.order(:name).each do |package|
      @slideshow << {name: package.name, link: package.image_link, description: package.image_description}
    end

    begin
      @client = YahooWeather::Client.new
      @weather = @client.fetch(@city.code)
    rescue SocketError => e
    end
  end

  # GET /gen_packages/1
  # GET /gen_packages/1.json
  def show
  end

  # GET /gen_packages/new
  def new
    @gen_package = GenPackage.new
  end

  # GET /gen_packages/1/edit
  def edit
  end

  # POST /gen_packages
  # POST /gen_packages.json
  def create
    @gen_package = GenPackage.new(gen_package_params)

    respond_to do |format|
      if @gen_package.save
        format.html { redirect_to @gen_package, notice: 'Gen package was successfully created.' }
        format.json { render :show, status: :created, location: @gen_package }
      else
        format.html { render :new }
        format.json { render json: @gen_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gen_packages/1
  # PATCH/PUT /gen_packages/1.json
  def update
    respond_to do |format|
      if @gen_package.update(gen_package_params)
        format.html { redirect_to :gen_packages, notice: 'Gen hotel was successfully updated.' }
        format.json { respond_with_bip(@gen_package) }
      else
        format.html { render :edit }
        format.json { render json: @gen_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gen_packages/1
  # DELETE /gen_packages/1.json
  def destroy
    @gen_package.destroy
    respond_to do |format|
      format.html { redirect_to gen_packages_url, notice: 'Gen package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gen_package
      @gen_package = GenPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gen_package_params
      params.require(:gen_package).permit(:name, :code, :description, :image_name, :image_link, :image_description)
    end
end
