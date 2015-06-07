class CurrencyController < ApplicationController
  #respond_to :json

  def list
    @currency = Currency.all.to_a
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

end