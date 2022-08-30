module Currencyapi

  class Endpoints

    def self.status()
      @result = callApi('status')
    end

    def self.currencies(currencies)
      @result = callApi(sprintf('currencies?currencies=%s', currencies))
    end

    def self.latest(baseCurrency, currencies)
      @result = callApi(sprintf('latest?base_currency=%s&currencies=%s', baseCurrency, currencies))
    end

    def self.historical(date, baseCurrency, currencies)
      @result = callApi(sprintf('historical?date=%s&base_currency=%s&currencies=%s', date, baseCurrency, currencies))
    end

    def self.range(datetime_start, datetime_end, accuracy, baseCurrency, currencies)
      @result = callApi(sprintf('range?datetime_start=%s&datetime_end=%s&accuracy=%s&base_currency=%s&currencies=%s', datetime_start, datetime_end, accuracy, baseCurrency, currencies))
    end

    def self.convert(value, date, baseCurrency, currencies)
      @result = callApi(sprintf('convert?value=%s&date=%s&base_currency=%s&currencies=%s', value, date, baseCurrency, currencies))
    end

    def self.callApi(route)
      # @full_route = sprintf('%s%s&apikey=%s', BASE_URL, route, @apikey)

      begin
        @response = RestClient.get "#{Currencyapi::BASE_URL}#{route}&apikey=#{Currencyapi.configuration.apikey}", { 'Accept' => 'application/json' }
      rescue RestClient::ExceptionWithResponse => e
        @data = e.response
      end
    end
  end
end
