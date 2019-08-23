class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episode = Episode.all
    end

    def create
        byebug
        @appearance = Appearance.create
        @episode = Episode.find(params[:id])
        redirect_to episode_path(@episode)
    end
end