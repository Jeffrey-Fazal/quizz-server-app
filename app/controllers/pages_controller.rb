class PagesController < ApplicationController
    # Since the backend was created in API mode, html can not be rendered without adding the middleware ActionDispatch::static
    def index
        render plain: "Please visit localhost:3001 for frontend"
    end
end
