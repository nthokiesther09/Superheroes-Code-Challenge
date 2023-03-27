class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
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
    
     
        # restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        # render json: restaurant_pizza, status: :created

      end

        private
        
        def hero_power_params
          params.permit(:strength, :hero_id, :power_id)
          
        end

        # def render_uprocessable_entity_response(invalid)
        #   render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        # end
    

      


  


end
