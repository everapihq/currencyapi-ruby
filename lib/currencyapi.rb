# frozen_string_literal: true

require_relative "currencyapi/version"
require 'rest-client'
require 'json'

module Currencyapi
  class Error < StandardError; end

  # YAML.load_file('config/currencyapi.yml')
  BASE_URL = 'https://api.currencyapi.com/v3/'

  def self.currencies(currencies)
    @result = callApi(sprintf('currencies?currencies=%s', currencies))
    JSON.parse(@result.body)
  end

  def self.latest(baseCurrency, currencies)
    @result = callApi(sprintf('latest?base_currency=%s&currencies=%s', baseCurrency, currencies))
    JSON.parse(@result.body)
  end

  def self.historical(date, baseCurrency, currencies)
    @result = callApi(sprintf('historical?date=%s&base_currency=%s&currencies=%s', date, baseCurrency, currencies))
    JSON.parse(@result.body)
  end

  def self.range(datetime_start, datetime_end, accuracy, baseCurrency, currencies)
    @result = callApi(sprintf('range?datetime_start=%s&datetime_end=%s&accuracy=%s&base_currency=%s&currencies=%s', datetime_start, datetime_end, accuracy, baseCurrency, currencies))
    JSON.parse(@result.body)
  end

  def self.convert(value, date, baseCurrency, currencies)
    @result = callApi(sprintf('convert?value=%s&date=%s&base_currency=%s&currencies=%s', value, date, baseCurrency, currencies))
    JSON.parse(@result.body)
  end

  def self.callApi(route)
    @result = RestClient.get BASE_URL + route + '&apikey=40b2e9d0-9e15-11ec-a821-b3efd9ef4456', headers={ 'Accept' => 'application/json'}
    JSON.parse(@result.body)
  end

end
