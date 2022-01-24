class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:destroy]
    def index
        @exercises = Exercise.all
        render json: @exercises
    end

    def create
        @exercise = Exercise.create!(exercise_params)
        render json: @exercise, status: :created, location: @exercise
        
    end

    def destroy
        @exercise.destroy
        render json: @exercise
    end

    private
    def set_exercise
        @exercise = Exercise.find(params[:id])
    end

    def exercise_params
        params.require(:exercise).permit(:name, :target, :sets, :reps, :workout_id )
    end

end
