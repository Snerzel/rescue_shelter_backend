class Api::V1::SheltersController < ApplicationController

    def index
        @shelter = Shelter.all
        render json: @shelter
    end

    def create
        @shelter = Shelter.new(shelter_params)
        if @shelter.save!
            render json: @shelter
        else
            render json: {error: "Could not create shelter type!"}
        end
    end

    def show
        @shelter = Shelter.find(params[:id])
        render json: @shelter
    end

    def delete
        @shelter = Shelter.find(params[:id])
        @shelter.destroy
    end

    private

    def shelter_params
        params.require(:shelter).permit(:kind)
    end


end
