#This config was jacked from rack-cors READEME from github (which see)

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'http://localhost:3001' # this needs to be an explicit list of URLs on Heroku
        resource '*',
            :headers => :any,
            :methods => %i( get post put patch delete options head ),
            credentials: true
    end
end 

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#     allow do
#         origins 'http://localhost:3000' # this needs to be an explicit list of URLs on Heroku
#         resource '*',
#             :headers => :any,
#             :methods => %i( get post put patch delete options head ),
#             credentials: true
#     end
# end 