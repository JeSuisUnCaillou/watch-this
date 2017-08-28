require 'test_helper'

class YoutubeApiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do
    
  end
  
  test "basic check of the youtube API" do
    video = Yt::Video.new id:  'dQw4w9WgXcQ'
    assert_equal video.title, 'Rick Astley - Never Gonna Give You Up'
  end
  
  test "another basic check of the youtube API" do
    playlist = Yt::Playlist.new id:  'PLHYVKdTa8XHWRM0XBCAXwQolzeMT-Gf9F'
    assert_equal playlist.title, 'SURICATE'
  end
  
end
