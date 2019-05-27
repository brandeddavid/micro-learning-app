require 'jwt'

def generate_token(data, secret_key)
  JWT.encode data, secret_key, 'HS256'
end

def decode_token(token, secret_key)
  JWT.decode token, secret_key, true, { algorithm: 'HS256' }
end
