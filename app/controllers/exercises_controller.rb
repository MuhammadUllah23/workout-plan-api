class ExercisesController < ApplicationController
    def index
        exercises = Exercise.all
        render json: exercises
    end

    def create
        @exercise = Exercise.new(exercise_params)
        # byebug
        if @exercise.save
            render json: @exercise, status: :created, location: @exercise
        else
            render json: {message: "Make sure to fill all inputs"}
        end
    end

end
