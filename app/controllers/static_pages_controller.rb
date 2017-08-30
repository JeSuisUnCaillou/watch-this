class StaticPagesController < ApplicationController
    def home
        if(user_signed_in?)
            youtube_api = YoutubeApi.new()
            ap current_user.google_token
            @playlists = youtube_api.get_playlists(current_user.google_token)
            #@youtube_api.add_video_to_playlist(google_token, playlist_id, video_id)
            #playlist = @youtube_api.create_playlist(google_token, "test 1")
            #@youtube_api.add_video_to_playlist(google_token, playlist.id, video_id)
        end
    end
    
end
