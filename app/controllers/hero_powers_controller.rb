class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.create!(heropowers_params)
        hero = Hero.find(params[:hero_id])

        render json: hero, status: :created

    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity

    rescue ActiveRecord::RecordNotFound
        render json: {error: "Hero does not exist"}, status: :not_found

    rescue ArgumentError => e
        render json: {errors: e.message}, status: :unprocessable_entity

    end

    def heropowers_params
        params.permit(:strength, :hero_id, :power_id)
    end
end
