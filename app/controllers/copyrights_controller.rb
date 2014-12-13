class CopyrightsController < ApplicationController
  before_action :set_copyright, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @copyrights = Copyright.all
    respond_with(@copyrights)
  end

  def show
    respond_with(@copyright)
  end

  def new
    @copyright = Copyright.new
    respond_with(@copyright)
  end

  def edit
  end

  def create
    @copyright = Copyright.new(copyright_params)
    @copyright.save
    respond_with(@copyright)
  end

  def update
    @copyright.update(copyright_params)
    respond_with(@copyright)
  end

  def destroy
    @copyright.destroy
    respond_with(@copyright)
  end

  private
    def set_copyright
      @copyright = Copyright.find(params[:id])
    end

    def copyright_params
      params[:copyright]
    end
end
