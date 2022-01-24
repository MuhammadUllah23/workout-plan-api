class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:destroy]
    def index
        exercises = Exercise.all
        render json: exercises
    end

    def create
        @exercise = Exercise.new(exercise_params)
    
        if @exercise.save
            render json: @exercise, status: :created, location: @exercise
        else
            render json: {message: "Make sure to fill all inputs"}
        end
    end

    def destroy
        exercise = Exercise.find(params[:id])

        exercise.destroy
        render json: exercise
    end

    private
    def set_exercise
        @exercise = Exercise.find(params[:id])
    end

    def exercise_params
        params.require(:exercise).permit(:name, :target, :sets, :reps, :workout_id )
    end

end
