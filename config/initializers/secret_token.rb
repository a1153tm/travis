# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Travis::Application.config.secret_key_base = '1902508e7a88b311f25c271f6a2fc3b1cb324aa130799e75b6cb6490415bfd90915a2a11ae3a0eb40d33b3fd0affb1b8c301170822128ab85559c753052a2cab'
