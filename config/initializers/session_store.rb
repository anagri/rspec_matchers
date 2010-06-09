# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rspec_matchers_session',
  :secret      => 'eec7b319af119dc787d9a24dc587e11636d95b9ab21393bcd9ae5d1fc86ff6b17adf5d76c2cf228381a5e72c2324a33819edc14ec85679d64fb1fcebc758b0d4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
