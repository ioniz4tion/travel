class GenRestaurantsController < ApplicationController
  before_action :set_gen_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /gen_restaurants
  # GET /gen_restaurants.json
  def index
    @gen_restaurants = GenRestaurant.all
    @city = GenPackage.find_by_name(params[:city])
    @slideshow = []
    GenPackage.find_by_name(params[:city]).gen_restaurants.all.each do |package|
      @slideshow << {name: package.name, link: package.link, description: package.image_description}
    end

     begin
      @client = YahooWeather::Client.new
      @weather = @client.fetch(@city.code)      
    rescue SocketError => e
    end
  end

  # GET /gen_restaurants/1
  # GET /gen_restaurants/1.json
  def show
  end

  # GET /gen_restaurants/new
  def new
    @gen_restaurant = GenRestaurant.new
  end

  # GET /gen_restaurants/1/edit
  def edit
  end

  # POST /gen_restaurants
  # POST /gen_restaurants.json
  def create
    @gen_restaurant = GenPackage.find_by_name(params[:city]).gen_restaurants.build(name: "Test")

    respond_to do |format|
      if @gen_restaurant.save
        format.html { redirect_to gen_restaurants_path, notice: 'Gen restaurant was successfully created.' }
        format.json { render :show, status: :created, location: gen_restaurants_path }
      else
        format.html { render :new }
        format.json { render json: gen_restaurants_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gen_restaurants/1
  # PATCH/PUT /gen_restaurants/1.json
  def update
    respond_to do |format|
      if @gen_restaurant.update(gen_restaurant_params)
        format.html { redirect_to :gen_restaurant, notice: 'Gen restaurant was successfully updated.' }
        format.json { respond_with_bip(@gen_restaurant) }
      else
        format.html { render :edit }
        format.json { render json: @gen_restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gen_restaurants/1
  # DELETE /gen_restaurants/1.json
  def destroy
    @gen_restaurant.destroy
    respond_to do |format|
      format.html { redirect_to gen_restaurants_url, notice: 'Gen restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gen_restaurant
      @city = GenPackage.find_by_name(params[:city])
      @gen_restaurant = GenRestaurant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gen_restaurant_params
      params.require(:gen_restaurant).permit(:name, :description, :pricing, :address, :link, :image_description, :phone, :website, :hours, :rating, :iframe_id, :button_id, :gen_packages_id)
    end
end
