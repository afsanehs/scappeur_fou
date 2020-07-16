require 'nokogiri'
require 'open-uri'

def get_links
    print "fetching webpage..."
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/tableau"))
    puts "done"
    links = page.css("a")
    deputy_links=[]
    links.each do |link|
      url = link.attributes["href"].text
      if url =~ /deputes\/fiche/
          deputy_links << url
      end
    end
    return deputy_links
end

def get_deputee_data(page_name)
    print "fetching #{page_name}..."
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{page_name}"))
    name = page.xpath("/html/body/div/div[3]/div/div/div/section[1]/div/article/div[2]/h1").text
    name = name.split[1..-1]
    first_name = name[0]
    last_name = name[1]
    email = page.xpath("/html/body/div/div[3]/div/div/div/section[1]/div/article/div[3]/div/dl/dd[4]/ul/li[2]/a").text
    puts "done"
    return {
        "first_name" => first_name,
        "last_name" => last_name,
        "email" => email
    }
end
