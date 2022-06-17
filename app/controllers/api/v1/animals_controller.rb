class Api::V1::AnimalsController < ApplicationController
    berfore_action :set_shelter

    def index
        animals = @shelter.animals
        render json: animals
    end

    def create
        animal = @shelter.animal.build(animal_params)
        if animal.save!
            render json: animal
        else
            render json: {error: "Could not submit!"}
    end

    def show
        animal = @shelter.animals.find_by(params[:id])
        render json: animal
    end

    def delete
        animal = @shelter.animals.find_by(params[:id])
        animal.destroy
    end

    private

    def set_shelter
        @shelter = Shelter.find(params[:shelter_id])
    end

    def animal_params
        params.require(:shelter).permit(:shelter_id, :kind, :availability, :age, :name, :info)
    end
    
end
