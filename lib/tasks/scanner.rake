require 'csv'    
require 'nokogiri'
require 'open-uri'
namespace :scanners do
  desc "testing scanners" 
  task :test => :environment do 
    
    Scanner.parse_data({})

  end
end


