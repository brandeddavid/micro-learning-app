require 'jwt'

def generate_token(data, secret_key)
  JWT.encode data, secret_key, 'HS256'
end
