require 'common'

require 'rubygems'
require 'open-uri'
require 'json'
require 'uri'
require 'thor'

module Getapp
  class Parsejson < Thor
    attr_accessor :common

    def initialize(common: Common.new)
      @common = common
    end

    def softwareadvice(url)
      data = JSON.load common.file_url(url)
      data["products"].each do |row|
    
        common.data = []
        common.data << row['title'] << row['categories'] << row['twitter']
        
        common.console_output
      end
    end

  end
end