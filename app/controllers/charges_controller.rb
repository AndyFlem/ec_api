# app/controllers/charges_controller.rb

  class ChargesController < ApplicationController
      before_action :set_charge, only: [:show]
    
      # GET /charges
      def index
        @charges = Charge.all
        render json: @charges, each_serializer: ChargeSerializer
      end
    
      # GET /charge/:id
      def show
        render json: @charge, serializer: ChargeSerializer
      end
    
      def set_charge
        @charge = Charge.find(params[:id])
      end
  end
