require 'common'

require 'rubygems'
require 'open-uri'
require 'csv'
require 'uri'
require 'thor'

module Getapp
  class Parsecsv < Thor
    attr_accessor :common

    desc "read", "read url and header from csv"
    option :url, :type => :string, :required => true
    option :header
    def read(url,header=true)
      common = Common.new
      CSV.parse(common.file_url(url), headers: true).each do |row|
        common.data = []
        common.data << row['name'] << row['tags'] << row['twitter']
        
        common.console_output
      end
    end

  end
end