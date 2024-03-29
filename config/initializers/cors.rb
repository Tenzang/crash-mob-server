Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins ENV['sourceURL']

        resource '*',
            headers: :any,
            methods: [:get, :post, :patch, :put],
            credentials: true
    end
end 
