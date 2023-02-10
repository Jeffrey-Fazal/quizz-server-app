# Devise.setup do |config|
#   config.jwt do |jwt|
#     jwt.secret = 'fafaf'
#     jwt.dispatch_requests = [
#       ['POST', %r{^/users/sign_in$}]
#     ]
#     jwt.revocation_strategy = :jwt_blacklist
#   end
# end
