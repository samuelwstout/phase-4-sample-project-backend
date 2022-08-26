class SessionsController < ApplicationController
    skip_before_action :authorized

    def get_current_musician
        render json: current_musician
        # retrieve a token and decode that token in order to see current musician
    end

    def login
        @musician = Musician.find_by(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], instrument: params[:instrument], location: params[:location], bio: params[:bio], media_url1: params[:media_url1], media_url2: params[:media_url2])
        if @musician && @musician.authenticate(params[:password])
            @token = encode_token({ musician_id: @musician.id })
            render json: { musician: @musician, token: @token }, status: :ok
        else
            render json: { errors: ["Values must match"]}, status: :unprocessable_entity
        end
    end

end