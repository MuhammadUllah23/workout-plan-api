class SessionsController < ApplicationController
    def create
        @session = Session.create!(session_params)
    end
    
end
