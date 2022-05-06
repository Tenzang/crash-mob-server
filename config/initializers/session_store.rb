if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, domain: ENV["sourceURL"]
else
    Rails.application.config.session_store :cookie_store
end