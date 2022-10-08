# frozen_string_literal: true

require_relative "getapp/version"
require 'thor'

module Getapp
  class Error < Thor
    def self.exit_on_failure?
      true
    end
  end
end