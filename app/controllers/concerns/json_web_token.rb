# frozen_string_literal: true

require "jwt"
module JsonWebToken
    extend ActiveSupport::Concern
    SECRET_KEY = Rails.application.credentials.secret_key_base

    def jwt_encode(payload, exp = 7.days.from_now)
        payload[:exp] = exp.to_i
        return JWT.encode(payload, SECRET_KEY)
    end

    def jwt_decode(token)
        decoded = JWT.decode(token, SECRET_KEY)[0]
        return HashWithIndifferentAccess.new(decoded)
    end
end
