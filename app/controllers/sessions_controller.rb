class SessionsController < ApplicationController
    skip_before_action :authorized

    def get_current_musician
        render json: current_musician
        # retrieve a token and decode that token in order to see current musician
    end

    def login
        @musician = Musician.find_by(email: params[:email])
        if @musician && @musician.authenticate(params[:password])
            @token = encode_token({ musician_id: @musician.id })
            render json: { musician: @musician, token: @token }, status: :ok
        else
            render json: { errors: ["Values must match"]}, status: :unprocessable_entity
        end
    end

end