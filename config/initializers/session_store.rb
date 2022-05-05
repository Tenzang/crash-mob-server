if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_crash-mob-server", domain: ENV["sourceURL"]
else
    Rails.application.config.session_store :cookie_store, key: "_crash-mob-server"
end