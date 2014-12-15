class GenPackagesController < ApplicationController
  before_action :set_gen_package, only: [:show, :edit, :update, :destroy]
  before_action :set_paragraph, only: [:show, :edit, :update_paragraph, :destroy_paragraph]

  # GET /gen_packages
  # GET /gen_packages.json
  def index
    @city = GenPackage.find_by_name(params[:city])
    @slideshow = []
    @slideshow << {name: @city.name, link: @city.image.url}

    randRecords = @city.gen_attractions.order("RANDOM()")
    @slideshow << {name: randRecords[0].name, link: randRecords[0].image.url}
    @slideshow << {name: randRecords[1].name, link: randRecords[1].image.url}
    @slideshow << {name: randRecords[2].name, link: randRecords[2].image.url}
    
    randRecords = @city.gen_restaurants.order("RANDOM()")
    @slideshow << {name: randRecords[0].name, link: randRecords[0].image.url}
    @slideshow << {name: randRecords[1].name, link: randRecords[1].image.url}
    
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
  end

  def create_paragraph
    @paragraph = GenPackage.find_by_name(params[:city]).gen_package_paragraphs.build(text: "Default")

    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to "/" + params[:city], notice: 'Paragraph was successfully created.' }
        format.json { render :show, status: :created, location: "/" + params[:city] }
      else
        format.html { render :new }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_paragraph
    respond_to do |format|
      if @paragraph.update(paragraph_params)
        format.html { redirect_to "/" + params[:city], notice: 'Paragraph was successfully updated.' }
        format.json { respond_with_bip(@paragraph) }
      else
        format.html { render :edit }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy_paragraph
    @paragraph.destroy
    respond_to do |format|
      format.html { redirect_to "/" + params[:city], notice: 'Paragraph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # PATCH/PUT /gen_packages/1
  # PATCH/PUT /gen_packages/1.json
  def update
    respond_to do |format|
      if @gen_package.update(gen_package_params)
        format.html { redirect_to "/" + params[:city], notice: 'Picture was successfully updated.' }
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
      params.require(:gen_package).permit(:iframe_url, :image, :name, :code, :description, :image_name, :image_link, :image_description)
    end

    def set_paragraph
      @paragraph = GenPackageParagraph.find(params[:id])
    end

    def paragraph_params
      params.require(:gen_package_paragraph).permit(:text, :image)
    end
end
