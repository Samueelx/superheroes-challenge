class PowersController < ApplicationController
    def index
        powers = Power.all
        render json: powers, status: :ok
    end

    def show
        power = Power.find(params[:id])
        render json: power, status: :ok

    rescue ActiveRecord::RecordNotFound
        render json: {error: "Power not found"}, status: :not_found

    end

    def update
        power = Power.find(params[:id])
        power.update!(powers_params)

        render json: power, status: :created

    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity

    rescue ActiveRecord::RecordNotFound
        render json: {error: "Power not found"}, status: :not_found

    end

    private
    def powers_params
        params.permit(:name, :description)
    end
end
