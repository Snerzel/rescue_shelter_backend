class Api::V1::AnimalsController < ApplicationController
    before_action :set_shelter

    def index
        @animals = Animals.all
        render json: @animals
    end

    def create
        @animal = @shelter.animals.new(animal_params)
        if @animal.save!
            render json: @animal
        else
            render json: {error: "Could not submit!"}
        end
    end

    def show
        @animal = Animals.find_by(params[:id])
        render json: @animal
    end

    def destroy
        @animal = Animal.find(params["id"])
        @shelter = Shelter.find(@animal.shelter_id)
        @animal.destroy
        render json: @animal
    end

    def update
        @animal = Animal.find(params["id"])
        @animal.update(animal_params)
        render json: @shelter.animals.new(@animal)
    end

    private

    def set_shelter
        @shelter = Shelter.find(params[:shelter_id])
    end

    def animal_params
        params.require(:animal).permit(:shelter_id, :kind, :availability, :age, :name, :info)
    end
    
end
