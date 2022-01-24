class WorkoutsController < ApplicationController
    before_action :set_workout, only: [:show, :destroy]

    def index
        workouts = Workout.all
        render json: workouts
    end

    def create
        @workout = Workout.new(workout_params)
        # byebug
        if @workout.save
            render json: @workout, status: :created, location: @workout
        else
            render json: {message: "Make sure to fill all inputs"}
        end
    end

    def destroy
        workout = Workout.find(params[:id])
        workout.destroy
        render json: workout
    end

   
    private
    def set_workout
        @workout = Workout.find(params[:id])
    end

    def workout_params
        params.require(:workout).permit(:title, :focus)
    end
end
