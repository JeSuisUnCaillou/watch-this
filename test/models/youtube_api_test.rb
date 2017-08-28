require 'test_helper'

class YoutubeApiTest < ActiveSupport::TestCase
  
  setup do
    @youtube_api = YoutubeApi.new()
  end
  
  test "basic check of the youtube API" do
    video = @youtube_api.get_video 'dQw4w9WgXcQ'
    assert_equal video.title, 'Rick Astley - Never Gonna Give You Up'
  end
  
  test "another basic check of the youtube API" do
    playlist = @youtube_api.get_playlist 'PLHYVKdTa8XHWRM0XBCAXwQolzeMT-Gf9F'
    assert_equal playlist.title, 'SURICATE'
  end
  
  # test "crete playlist" do
  #   playlist = @youtube_api.create_playlist 'this is a test title'
  #   assert_equal playlist.title, 'this is a test title'
  # end
  
end
