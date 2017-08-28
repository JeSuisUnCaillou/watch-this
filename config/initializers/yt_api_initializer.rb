class YtApiInitializer
    API_KEY = ENV["YOUTUBE_API_KEY"]
    OAUTH_CLIENT_ID = ENV["YOUTUBE_OAUTH_CLIENT_ID"]
    OAUTH_CLIENT_SECRET = ENV["YOUTUBE_OAUTH_CLIENT_SECRET"]
    
    if(API_KEY)
        Yt.configuration.api_key = API_KEY 
    else
        raise LoadError, "Can't find environment variable 'YOUTUBE_API_KEY'"
    end
    
    if(OAUTH_CLIENT_ID)
        Yt.configuration.client_id = OAUTH_CLIENT_ID
        
        if(OAUTH_CLIENT_SECRET)
            Yt.configuration.client_secret = OAUTH_CLIENT_SECRET
        else 
            raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_SECRET'"
        end
    else
        raise LoadError, "Can't find environment variable 'YOUTUBE_OAUTH_CLIENT_ID'"
    end
end