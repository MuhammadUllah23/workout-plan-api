class SessionsController < ApplicationController
    def create
        @session = Session.create!(session_params)
    end

    private

    def session_params
        params.require(:session).permit(:sets, :reps, :dropset, :weight, :workout_id, :exercise_id)
    end
    
end
