class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, ENV['JWT_SECRET'])
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, ENV['JWT_SECRET'], true, algorithm: ENV['JWT_ALGORITHM'])
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_musician
        if decoded_token
            musician_id = decoded_token[0]['musician_id']
            @musician = Musician.find_by(id: musician_id)
        end
    end

    def logged_in?
        !!current_musician
    end

end
