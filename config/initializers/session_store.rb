# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_partes_session',
  :secret      => 'd34bb195c73fd71ae7eba00ddaa663fbc4e546dacd7b8ca22b9dbaf8737d0a572bb4890083001a6698cbd351f1c87932182459c0d731e6cc0d9fe240fe7ce2b7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
