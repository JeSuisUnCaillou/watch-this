class YoutubeApi
    API_KEY = ENV["YOUTUBE_API_KEY"]
    OAUTH_CLIENT_ID = ENV["YOUTUBE_OAUTH_CLIENT_ID"]
    OAUTH_CLIENT_SECRET = ENV["YOUTUBE_OAUTH_CLIENT_SECRET"]
    
    def initialize()
        initialize_secret_keys()
    end
    
    def get_video(id)
       Yt::Video.new id: id
    end
    
    def get_playlist(id)
        Yt::Playlist.new id: id
    end
    
    def create_playlist(title)
        return {title: "nope"}
    end

    
    
    private
    
    def initialize_secret_keys
        if(API_KEY)
            Yt.configuration.api_key = API_KEY 
        else
            raise LoadError, "Can't find environment variable 'YOUTUBE_API_KEY'"
        end
        
        if(OAUTH_CLIENT_ID)
            Yt.configuration.client_id = OAUTH_CLIENT_ID
        else
            raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_ID'"
        end
        
        if(OAUTH_CLIENT_SECRET)
            Yt.configuration.client_secret = OAUTH_CLIENT_SECRET
        else 
            raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_SECRET'"
        end
    end
    
end
