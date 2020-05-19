class WelcomeController < ApplicationController
    def index
        render json: { status: 200, message: "Sneaker Head API" }
      end
end
