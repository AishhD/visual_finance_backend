class ApplicationController < ActionController::API

    def logged_in_user
        User.find(token_user_id)
    end

    def token_user_id
        decoded_token.first['id']
    end

    def decoded_token
        if token
            begin
                JWT.decode(token, secret, true)
            rescue JWT::DecodeError
                return [{}]
            end
        else
            return [{}]
        end
    end

    def token
        request.headers['Authorization']
    end

    def secret
    "Every cloud engenders not a storm"
    end

    def issue_token(payload)
        JWT.encode(payload, secret)
    end

end
