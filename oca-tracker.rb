#!/usr/bin/env ruby
require 'rubygems'
require 'bundler/setup'

require 'rest-client'
require 'json'
require 'terminal-table'

class OcaTracker
  URL = 'http://www5.oca.com.ar/'
  API = 'ocaepakNet/Views/ConsultaTracking/TrackingConsult.aspx/GetTracking'
  HEADERS = {
    :user_agent => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.86 Safari/537.36',
    :'Content-Type' => 'application/json; charset=UTF-8'
    }

  def query_api (trackNumber)
    data = {:numberOfSend => trackNumber}
    RestClient.post URL+API, data.to_json, HEADERS
  end

  def query_tracker (trackNumber)
    res = JSON.parse(query_api(trackNumber))
    rows = res['d'].map{|row| [row['DateShow'],row['State'],row['Sucursal']]}
    table = Terminal::Table.new :title => "Oca Terminal Tracker", :headings => ['Fecha', 'Estado', 'Sucursal'], :rows => rows
    puts table
  end

end

if ARGV[0] != nil && ARGV[0].to_i != 0
  num = ARGV[0].to_i
  oca = OcaTracker.new
  oca.query_tracker(num)
else
  puts "Number of tracking is required"
end
