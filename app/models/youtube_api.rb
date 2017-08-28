class YoutubeApi
    
    def initialize()
        initialize_secret_keys()
    end
    
    def get_video(id)
       Yt::Video.new id: id
    end
    
    def get_playlist(id)
        Yt::Playlist.new id: id
    end
    
    
    
    private
    
    def initialize_secret_keys
        if(SecretKeys::API_KEY)
            Yt.configuration.api_key = SecretKeys::API_KEY 
        else
            raise LoadError, "Can't find environment variable 'YOUTUBE_API_KEY'"
        end
        
        if(SecretKeys::OAUTH_CLIENT_ID)
            Yt.configuration.client_id = SecretKeys::OAUTH_CLIENT_ID
        else
            raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_ID'"
        end
        
        if(SecretKeys::OAUTH_CLIENT_SECRET)
            Yt.configuration.client_secret = SecretKeys::OAUTH_CLIENT_SECRET
        else 
            raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_SECRET'"
        end
    end
    
end
