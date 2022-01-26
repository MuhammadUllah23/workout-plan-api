class ExercisesController < ApplicationController
    before_action :set_exercise, only: [:destroy, :update]
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

    def update
        @exercise.update!(exercise_params)
        render json: @exercise, status: :created, location: @exercise
    end

    private
    def set_exercise
        @exercise = Exercise.find(params[:id])
    end

    def exercise_params
        params.require(:exercise).permit(:name, :target, :sets, :reps)
    end

end
