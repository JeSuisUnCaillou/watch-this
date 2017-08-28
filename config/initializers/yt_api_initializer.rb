class YtApiInitializer
    API_KEY = ENV["YOUTUBE_API_KEY"]
    
    if(API_KEY)
        Yt.configuration.api_key = API_KEY 
    else
        raise LoadError, "Can't find environment variable 'YOUTUBE_API_KEY'"
    end
    
end