require 'common'

require 'rubygems'
require 'open-uri'
require 'yaml'
require 'uri'
require 'thor'

module Getapp
  class Parseyaml < Thor
    attr_accessor :common

    def initialize(common: Common.new)
      @common = common
    end

    def capterra(url)
      puts "Read from yaml url: #{url}"
      data = YAML.load_file url
      data.each do |row|
        common.data = []
        common.data << row['name'] << row['tags'] << row['twitter']
        
        common.console_output
      end
    end

  end
end