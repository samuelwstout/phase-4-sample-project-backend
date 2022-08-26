class SessionsController < ApplicationController
    skip_before_action :authorized

    def get_current_musician
        render json: current_musician
        # retrieve a token and decode that token in order to see current musician
    end

end