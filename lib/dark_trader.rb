require 'nokogiri'
require 'open-uri'

def get_data
    print "fetching webpage..."
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    puts "done"
    page.xpath('/html/body/div/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr')
end

def currency_and_price(row)
    tds = row.xpath ("td")
    name = tds[2].text
    price = tds[4].text.gsub("$","").gsub(",","").to_f
    {name => price}
end
