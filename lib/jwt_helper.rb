require 'jwt'

def verify_jwt(token)
  secret_key = Rails.application.credentials.secret_key_base
  begin
    decoded_token = JWT.decode(token, secret_key, true, algorithm: 'HS256')
    payload = decoded_token.first
    # Add any additional verification logic here
    return payload
  rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
    return nil
  end
end
