class PlaylistsController < ApplicationController
    def new
        
    end
    
    def create
        youtube_api = YoutubeApi.new()
        if(user_signed_in?)
            youtube_api.create_playlist(current_user.google_token, playlist_params[:title], playlist_params[:description])
        end
        redirect_to root_url
    end
    
    private
    
        def playlist_params
           params.require(:playlist).permit(:title, :description) 
        end
end