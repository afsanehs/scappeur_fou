require_relative '../lib/deputees.rb'

deputy_links = get_links
data=[]
deputy_links.each do |d|
    data << get_deputee_data
end
puts data