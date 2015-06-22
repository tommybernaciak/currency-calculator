class CurrencyController < ApplicationController
  #respond_to :json

  def list
    @currency = Currency.order(:id).to_a
    @currency_list = @currency.each do |c|
      {
        id:       c.id,
        name:     c.name,
        country:  c.country,
        rate:     c.rate
      }
    end
    respond_success_json_data(@currency_list.to_json)
  end

  def refresh
    if Currency.parse_currencies_from_xml
      puts 'refresh'
      render json: { data: 'refresh' }
    else
      puts 'error'
      render json: { data: 'error' }
    end
  end
end