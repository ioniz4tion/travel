class GenHotelsController < ApplicationController
  before_action :set_gen_hotel, only: [:show, :edit, :update, :destroy]

  # GET /gen_hotels
  # GET /gen_hotels.json
  def index
    @gen_hotels = GenHotel.all
    @city = GenPackage.find_by_name(params[:city])
    @slideshow = []
    GenPackage.find_by_name(params[:city]).gen_hotels.all.each do |package|
      @slideshow << {name: package.name, link: package.image.url, description: package.image_description}
    end

     begin
      @client = YahooWeather::Client.new
      @weather = @client.fetch(@city.code)      
    rescue SocketError => e
    end
  end

  # GET /gen_hotels/1
  # GET /gen_hotels/1.json
  def show
  end

  # GET /gen_hotels/new
  def new
    @gen_hotel = GenHotel.new
  end

  # GET /gen_hotels/1/edit
  def edit
  end

  # POST /gen_hotels
  # POST /gen_hotels.json
  def create
    @gen_hotel = GenPackage.find_by_name(params[:city]).gen_hotels.build(name: "Test")

    respond_to do |format|
      if @gen_hotel.save
        format.html { redirect_to gen_hotels_path, notice: 'Gen hotel was successfully created.' }
        format.json { render :show, status: :created, location: gen_hotels_path }
      else
        format.html { render :new }
        format.json { render json: gen_hotels_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gen_hotels/1
  # PATCH/PUT /gen_hotels/1.json
  def update
    respond_to do |format|
      if @gen_hotel.update(gen_hotel_params)
        format.html { redirect_to :gen_hotels, notice: 'Gen hotel was successfully updated.' }
        format.json { respond_with_bip(@gen_hotel) }
      else
        format.html { render :edit }
        format.json { render json: @gen_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gen_hotels/1
  # DELETE /gen_hotels/1.json
  def destroy
    @gen_hotel.destroy
    respond_to do |format|
      format.html { redirect_to gen_hotels_url, notice: 'Gen hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gen_hotel
      @city = GenPackage.find_by_name(params[:city])
      @gen_hotel = GenHotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gen_hotel_params
      params.require(:gen_hotel).permit(:image, :image_thumb, :name, :description, :pricing, :address, :link, :image_description, :phone, :website, :hours, :rating, :iframe_id, :button_id, :gen_packages_id)
    end
end
