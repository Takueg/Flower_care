class OffersController < ApplicationController
    skip_before_action :authenticate_user!, only: [ :show, :index]
    before_action :set_offer, only: [ :show ]
    
    def index
        @offers = Offer.all
    end
    
    def new
      @offer = Offer.new
    end
    
    def show
      @offer = Offer.find(params[:id])
    end

    def create
      @offer = Offer.new(offer_params)
      @offer.user = current_user
      if @offer.save
        redirect_to offer_path(@offer)
      else
        render :new
      end
    end

    private

  def offer_params
    params.require(:offer).permit(:title, :description, :date, :image_url, :address, :instruction, :price)
  end

  def set_offer
    @offer = Offer.find(params[:id])
    # authorize @offer
  end  
end
