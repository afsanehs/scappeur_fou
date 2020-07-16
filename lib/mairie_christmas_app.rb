require_relative '../lib/mairie_christmas.rb'

townhall_urls=get_townhall_urls
list = []
townhall_urls.each do |link|
    list << get_name_and_email(link)
end
puts list
