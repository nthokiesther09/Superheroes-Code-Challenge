class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    #GET/powers
    def index
        power = Power.all
        render json: power
    end
 
    #GET/powers/id
    def show
        power = Power.find_by(id: params[:id])
        render json: power, status: :ok
    end
 
    # PATCH /description
    def update
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    
    private
 
        def power_params
            params.permit(:description)
        end

        def render_not_found_response
            render json: { error: "Power not found" }, status: :not_found
        end

end
