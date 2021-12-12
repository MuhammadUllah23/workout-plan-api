class WorkoutsController < ApplicationController
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

    private

    def workout_params
        params.require(:workout).permit(:title, :focus)
    end
end
