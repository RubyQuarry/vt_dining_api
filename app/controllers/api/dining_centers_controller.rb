module API
  class DiningCentersController < ApplicationController
    def index
      @centers = DiningCenter.all
      render json: @centers, status: 200
    end

    def show
    end

    def update
    end
  end
end
