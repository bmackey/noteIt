# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

# NoteIt::Application.config.secret_key_base = '831748eade86682acceebf7d72c71419ba4772d362ef734b204c0024b6a40b5081cbdb18aff7539111323c8edab99c8bba6f36d7db37682e2794d37ef16e0e22'

NoteIt::Application.config.secret_token = '3de02f63b27d25e570d3dc988b6694e57cc75224646b8cb654dfb04be622aaf83606deec8894d8cd41f85882060340c984a66451b78a3c8c345f8da3404b5db0'