class BookingsController < ApplicationController
    # before_action :set_booking, only: [ :show ]
    
    def index
        @bookings = Booking.all
    end
    
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new
        # @booking = Booking.find(params[:id])
        @booking.user = current_user
        @offer = Offer.find(params[:offer_id])
        @booking.offer = @offer
        @booking.save
        redirect_to offer_path(@offer)
    end

    def show
      @booking = Booking.find(params[:id])
    end

#     private

#   def booking_params
#     params.require(:booking).permit(:user_id, :offer_id)
#   end

#   def set_booking
#     @booking = Booking.find(params[:id])
#     # authorize @offer
#   end  
end