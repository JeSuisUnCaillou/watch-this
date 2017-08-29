class StaticPagesController < ApplicationController
    def home
        if(user_signed_in?)
            google_token = current_user.google_token
            playlist_id = "PLJVCoCkW8PUs0phEpnZPkzyZNDZgfYZqf"
            video_id = "1wUmnBoK83E"
            
            Yt.configure do |config| config.log_level = :debug end
            @youtube_api = YoutubeApi.new()
            #@youtube_api.add_video_to_playlist(google_token, playlist_id, video_id)
            playlist = @youtube_api.create_playlist(google_token, "test 1")
            @youtube_api.add_video_to_playlist(google_token, playlist.id, video_id)
        end
    end
end
