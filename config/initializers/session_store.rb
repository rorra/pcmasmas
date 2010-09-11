# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pcmasmas_session',
  :secret      => '65b96fe4ee53f4fbf33ab3ab7184bf17f0a2a6778fba23a57f9e2b5f8f8beb75213978400679f3f453b867c02e52488f321743b2007607659f7238de825740ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
