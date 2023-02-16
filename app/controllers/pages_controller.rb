class PagesController < ApplicationController
    # Since the backend was created in API mode, html can not be rendered without adding the middleware ActionDispatch::static
    def index
        render plain: "Visit https://bit.ly/bkquizserver for our backend git repo, https://bit.ly/fnquizclient for frontend repo or visit the live demo at quizga.com"
    end
end
