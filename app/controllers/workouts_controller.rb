class WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: workouts
    end

    def create
        @workout = Workout.new(workout_params)
        if @workout.save
            render json: @Workout
        else
            render json: {message: "Make sure to fill all inputs"}
        end
    end
end
