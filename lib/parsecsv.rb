require 'common'

require 'rubygems'
require 'open-uri'
require 'csv'
require 'uri'
require 'thor'

module Getapp
  class Parsecsv < Thor
    attr_accessor :common
    
    def initialize(common: Common.new)
      @common = common
    end

    def read(url,header)
      CSV.parse(common.file_url(url), headers: true).each do |row|
        common.data = []
        common.data << row['name'] << row['tags'] << row['twitter']
        
        common.console_output
      end
    end

  end
end