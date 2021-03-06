Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins ENV['sourceURL']
        resource ENV['resourceURL'],
            :headers => :any,
            :methods => %i( get post put patch delete options head ),
            credentials: true
    end
end 
