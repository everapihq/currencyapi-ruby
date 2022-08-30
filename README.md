# Currencyapi

## Installation

Add this line to your application's Gemfile:

    gem 'currencyapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install currencyapi

## Configuration

You will need your apikey to use Currencyapi, you can get one [here](https://app.currencyapi.com/register).

    Currencyapi.configure do |config|
      config.apikey = 'YOUR-API-KEY'
    end

If you are using Rails good place to add this is config/initializers/currencyapi.rb


## Usage & Endpoints


#### Status
Returns your current quota

    Currencyapi::Endpoints.status()

#### Currencies
Returns all our supported currencies

    Currencyapi::Endpoints.currencies(currencies)

  | Parameter | Data type | Mandatory | Description |
  | --- | ----------- | --- | ----------- |
  | currencies | string | no | A list of comma seperated currency codes which you want to get (EUR,USD,CAD). By default all available currencies will be shown |




#### Latest Exchange Rates
Returns the latest exchange rates. The default base currency is USD.

    Currencyapi::Endpoints.latest(base_currency, currencies)    

| Parameter | Data type | Mandatory | Description |
| --- | ----------- | --- | ----------- |
| base_currency | string | no | By default all values are based on USD. By default all values are based on USD |
| currencies | string | no | A list of comma seperated currency codes which you want to get (EUR,USD,CAD). By default all available currencies will be shown |

#### Historical Exchange Rates
Returns the latest exchange rates. The default base currency is USD.

    Currencyapi::Endpoints.historical(date, base_currency, currencies)    

| Parameter | Data type | Mandatory | Description |
| --- | ----------- | --- | ----------- |
| date | string | yes | Date to retrieve historical rates from (format: 2021-12-31) |
| base_currency | string | no | By default all values are based on USD. By default all values are based on USD |
| currencies | string | no | A list of comma seperated currency codes which you want to get (EUR,USD,CAD). By default all available currencies will be shown |


#### Range Historical Exchange Rates
Returns a range of exchange rates. Generally, we provide data going back to 1999.

    Currencyapi::Endpoints.range(datetime_start, datetime_end, accuracy, baseCurrency, currencies)    

| Parameter | Data type | Mandatory | Description |
| --- | ----------- | --- | ----------- |
| datetime_start | string | yes | Datetime for the start of your requested range (format: 2021-12-31T23:59:59Z / ISO8601 Datetime)
| datetime_end | string | yes | Datetime for the start of your requested range (format: 2021-12-31T23:59:59Z / ISO8601 Datetime) |
| accuracy | string | no | The accuracy you want to receive. Possible Values: day, hour, quarter_hour, minute Default: day For valid time ranges see below |
| base_currency | string | no | By default all values are based on USD. By default all values are based on USD |
| currencies | string | no | A list of comma seperated currency codes which you want to get (EUR,USD,CAD). By default all available currencies will be shown |


#### Convert Exchange Rates
Returns calculated values for today or any given date for all currencies.

    Currencyapi::Endpoints.convert(value, date, baseCurrency, currencies)

| Parameter | Data type | Mandatory | Description |
| --- | ----------- | --- | ----------- |
| value | string | yes | The value you want to convert |
| date | string | no | Date to retrieve historical rates from (format: 2021-12-31) |
| base_currency | string | no | By default all values are based on USD. By default all values are based on USD |
| currencies | string | no | A list of comma seperated currency codes which you want to get (EUR,USD,CAD). By default all available currencies will be shown |


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/currencyapi. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/currencyapi/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Currencyapi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/currencyapi/blob/master/CODE_OF_CONDUCT.md).
