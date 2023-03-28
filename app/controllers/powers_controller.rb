class PowersController < ApplicationController
    # skip_before_action :verify_authenticity_token
    # wrap_parameters format:[]

    def index
        power = Power.all
        render json: power
        end
 
        def show
            power = Power.find_by(id: params[:id])
                if power
                render json: power, status: :ok
                else
                render json: {error:"Power not found"}, status: :not_found
                end
        end
 
         # PATCH /description
        # def update
        #     power= Power.find_by(id:params[:id])
        #     if power
        #         power.update(power_params)
        #         #return the updated power
        #         render json: power, status: :accepted
        #     else
        #         #throw error
        #         render json: {errors:"validation errors"}, status: :unprocessable_entity
        #     end
        # end
        def update
            power = Power.find_by(id: params[:id])
            if power
                power.update(description: params[:description])
                render json: power, status: :ok
            else
                render json: {error: "Power not found"}, status: :not_found
            end
        end
 
        private
 

 

    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   
    # def index
    #     powers = Power.all
    #     render json: powers
    # end

    # def show
    #     power = Power.find(params[:id])
    #     render json: power
    # end

    # def update
    #     power = Power.find(params[:id])
    #         # if power
    #         power.update(power_params)
    #         render json: power
    #         # else
    #         # render json: { error: "Power not found" }, status: :not_found
    #         # end
    # end

    
    # private

    # def power_params
    #     params.permit(:description)
        
    # end

    # def render_not_found_response
    #     render json: { error: "Power not found" }, status: :not_found
    # end

end
