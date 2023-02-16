Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins '61.69.254.170', 'https://mighty-eyrie-05838.herokuapp.com/', 'https://roaring-lily-0e4daf.netlify.app/', 'quizga.com', 'localhost', '159.196.113.253'
        resource '*',
            headers: :any,
            methods: %i(get post put patch delete options head)
    end
end