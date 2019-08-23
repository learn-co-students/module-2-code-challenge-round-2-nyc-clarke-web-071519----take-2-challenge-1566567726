class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end
    
    def create
        @appearance = Appearance.create(appearances_params)

        redirect_to @appearance.episode
    end

    private

    def appearances_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end