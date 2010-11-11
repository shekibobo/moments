# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_moments_session',
  :secret      => '7d0de7c9414096726991f80765ed2b56ea70ea4fb5402f3641956d53f0c47e00bf6cad5f887f5f092d9bc2d81d5faa9ee1248b84f356a4a6eaa558bca080a468'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
