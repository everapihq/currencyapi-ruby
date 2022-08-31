# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "currencyapi/version"
require_relative 'currencyapi/endpoints'
require_relative 'currencyapi/configuration'

module Currencyapi
  BASE_URL = 'https://api.currencyapi.com/v3/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Currencyapi::Configuration.new
    yield(configuration)
  end
end
