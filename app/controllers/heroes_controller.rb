class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes, status: :ok
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, status: :ok

        rescue ActiveRecord::RecordNotFound
            render json: {error: "Hero not found"}, status: :not_found
            
    end
end
