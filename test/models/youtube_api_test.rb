require 'test_helper'

class YoutubeApiTest < ActiveSupport::TestCase
  
  setup do
    @youtube_api = YoutubeApi.new()
    
    Yt.configure do |config|
      config.log_level = :debug
    end
  end
  
  test "basic check of the youtube API" do
    video = @youtube_api.get_video 'dQw4w9WgXcQ'
    assert_equal video.title, 'Rick Astley - Never Gonna Give You Up'
  end
  
  test "another basic check of the youtube API" do
    playlist = @youtube_api.get_playlist 'PLHYVKdTa8XHWRM0XBCAXwQolzeMT-Gf9F'
    assert_equal playlist.title, 'SURICATE'
  end
  
   test "create playlist" do
     #Use a refresh token of my personnal account
     #playlist = @youtube_api.create_playlist "1/e-7r4JrN8w1I30AAkrIDvnGcx-388aRGBFtidYuBdPM", 'this is a test title'
     #assert_equal playlist.title, 'this is a test title'
  end
  
  
  
end
