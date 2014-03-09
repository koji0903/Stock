#encoding: UTF-8

require 'nokogiri'
require 'open-uri'


# Define the URL with the argument passed by the user
uri = "http://stocks.finance.yahoo.co.jp/stocks/detail/?code=3047"

# Use Nokogiri to get the document
doc = Nokogiri::HTML(open(uri))

# Find Subject
=begin
subject = doc.search('dl dt')
subject.each do |s|
	p s.content.split(" ")[0]
end
=end

value = doc.search('dl')
value.each do |v|
#	p v.content.split(/[（]/u)[0]
	p v.content.gsub(/(\r\n|\r|\n)/,"").split(/（/)[0]
end


