require 'nokogiri'
require 'open-uri'
require 'pry'
require 'pry-byebug'


t1= open('http://www.cdep.ro/pls/steno/steno.stenograma?ids=2')
doc= Nokogiri::HTML(t1)
dateraw=doc.css('.headline').children.text.split(" ").map(&:strip)
year= dateraw.last 
#@item.property = if params[:property] == nil then true else false end
month=dateraw[-2]
day=dateraw[-3] 
texts= doc.css('.textn')
headline = doc.css('span[class="headline"]').text
texts.each do |t|
	
	name= t.children.css('a').text.length>5 ? t.children.css('a').text : 'OTHER__'
	
	if !t.children.children.css('a')[0].nil?
		profile_link= 'http://www.cdep.ro' + t.children.children.css('a')[0].attributes['href'].value || 'MISSING'
		end
	#text= t.text.search('//text()').map(&:text).delete_if{|x| x !~ /\w/}
	binding.pry
	text=t.text.length > 50 ? t.text : 'smaller than 50 chars'
	#binding.pry
	p headline	
	puts profile_link
	puts name
	puts text
	puts month
	puts day
	puts year
	
	end

 
# #pageContent > p:nth-child(4) > table > tbody > tr:nth-child(2) > td:nth-child(3) > p:nth-child(1) > b > a
