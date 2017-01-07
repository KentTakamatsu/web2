# coding: utf-8
 
require 'rubygems'
require 'nokogiri'
require 'net/http'
require 'active_support/core_ext/string'
 
# Your package name
APPLICATION_ID = 'com.android.chrome'
 
MAX_POST = 20 # up to 20
 
GOOGLE_PLAY_HOT = 'https://play.google.com'
GOOGLE_PLAY_URL = '/store/getreviews'
GOOGLE_PLAY_REVIEW_REQUEST = "id=#{APPLICATION_ID}&reviewSortOrder=0&reviewType=1&pageNum=0"
 
def get_google_play_reviews_upto(post_count)
  return puts "You can require review post up to 20." if post_count > MAX_POST
 
  uri = URI.parse("#{GOOGLE_PLAY_HOT}#{GOOGLE_PLAY_URL}")
  data = GOOGLE_PLAY_REVIEW_REQUEST
 
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
 
  # obtain response from google play
  response = http.post(uri.path, data).body.split("n")[2]
 
  # convert unicode escaped string to "<" and ">"
  response.gsub!(/u([0-9a-f]{4})/) {
    [$1.hex].pack("U")
  }
 
  review_html =  Nokogiri::HTML(response, nil, 'UTF-8')
 
  (0..post_count-1).each.map do |node_num|
    <<-EOS.strip_heredoc.squish
      #{review_html.css('span."review-date"')[node_num].inner_text}:
      #{review_html.css('div."review-body"')[node_num].children[1].inner_text}
      #{review_html.css('div."review-body"')[node_num].children[2].inner_text}
    EOS
  end
end