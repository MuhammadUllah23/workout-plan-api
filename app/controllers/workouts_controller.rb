class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:destroy]

    def index
        @workouts = Workout.all
        render json: @workouts
    end

    def create
        @workout = Workout.create!(workout_params)
        render json: @workout, status: :created, location: @workout
    end

    def destroy
        @workout.destroy
        render json: @workout
    end

   
    private
    def set_workout
        @workout = Workout.find(params[:id])
    end

    def workout_params
        params.require(:workout).permit(:title, :focus)
    end
end
