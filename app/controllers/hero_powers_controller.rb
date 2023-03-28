class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
    def index
        hero_powers = HeroPower.all
        render json: hero_powers

    end

      def create
      hero_power = HeroPower.create(hero_power_params)
        if hero_power.valid?
          render json: hero_power, status: :created
        else
          render json: { errors:["validation errors" ]}, status: :unprocessable_entity
        end
    
      end
 

        private
        
        def hero_power_params
          params.permit(:strength, :hero_id, :power_id)
          
        end
      
end
