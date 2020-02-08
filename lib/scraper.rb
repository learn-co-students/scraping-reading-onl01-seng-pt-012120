require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

# binding.pry

doc = Nokogiri::HTML(html)

# binding.pry

doc.css(".headline-26OIBN")

courses = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586 .inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

binding.pry

courses.each do |course|
  puts course.text.strip
end