class StaticPagesController < ApplicationController
    def home
        if(user_signed_in?)
            youtube_api = YoutubeApi.new()
            @playlists = youtube_api.get_playlists(current_user.google_token)
        end
    end
    
end
