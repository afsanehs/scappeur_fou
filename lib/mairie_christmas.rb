require 'nokogiri'
require 'open-uri'


def get_townhall_urls
    print "fetching webpage..."
    page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95"))
    puts "done"
    a = []
    townhall_urls = page.xpath('/html/body/pre/a')
    townhall_urls.each do |row|
        a << row.attributes["href"].value 
    end
    a
end

def get_name_and_email(link)
    print "fetching data for #{link}..."
    page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/#{link}"))
    name = page.xpath("/html/body/div/main/section[1]/div/div/div/h1").text.split.first
    unless name
        puts "no data"
        return
    end  
    email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text
    puts "done"
    {name => email}
end

