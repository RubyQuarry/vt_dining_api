module API
  class DiningCentersController < ApplicationController
    def index
      @centers = DiningCenter.all
      if query = params[:name]
        @centers = DiningCenter.find_by(name: query)
      end
      render json: @centers, status: 200
    end

    def show

    end

    def update
    end


    private 
  end
end
