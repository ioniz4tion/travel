class GenAttractionsController < ApplicationController
  before_action :set_gen_attraction, only: [:show, :edit, :update, :destroy]

  # GET /gen_attractions
  # GET /gen_attractions.json
  def index
    @gen_attractions = GenAttraction.all
    @city = GenPackage.find_by_name(params[:city])
    @slideshow = []
    GenPackage.find_by_name(params[:city]).gen_attractions.all.each do |package|
      @slideshow << {name: package.name, link: package.image.url, description: package.image_description}
    end
    @packages = @city.gen_attractions.all

     begin
      @client = YahooWeather::Client.new
      @weather = @client.fetch(@city.code)      
    rescue SocketError => e
    end    
  end

  # GET /gen_attractions/1
  # GET /gen_attractions/1.json
  def show
  end

  # GET /gen_attractions/new
  def new
    @gen_attraction = GenAttraction.new
  end

  # GET /gen_attractions/1/edit
  def edit
  end
 
  # POST /gen_attractions
  # POST /gen_attractions.json
  def create
    @gen_attraction = GenPackage.find_by_name(params[:city]).gen_attractions.build(name: "Test")

    respond_to do |format|
      if @gen_attraction.save
        format.html { redirect_to gen_attractions_path, notice: 'Gen attraction was successfully created.' }
        format.json { render :show, status: :created, location: gen_attractions_path }
      else
        format.html { render :new }
        format.json { render json: gen_attractions_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gen_attractions/1
  # PATCH/PUT /gen_attractions/1.json
  def update
    #@gen_attraction = GenAttraction.create( gen_attraction_params )
    respond_to do |format|
      if @gen_attraction.update(gen_attraction_params)
        format.html { redirect_to :gen_attractions, notice: 'Gen attraction was successfully updated.' }
        format.json { respond_with_bip(@gen_attraction) }
      else
        format.html { render :edit }
        format.json { render json: @gen_attraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gen_attractions/1
  # DELETE /gen_attractions/1.json
  def destroy
    @gen_attraction.destroy
    respond_to do |format|
      format.html { redirect_to gen_attractions_url, notice: 'Gen attraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gen_attraction
      @city = GenPackage.find_by_name(params[:city])
      @gen_attraction = GenAttraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gen_attraction_params
      params.require(:gen_attraction).permit(:short_url, :iframe_url, :image, :image_thumb, :name, :description, :pricing, :location, :link, :image_description, :phone, :website, :hours, :rating, :iframe_id, :button_id, :gen_packages_id)
    end
end
