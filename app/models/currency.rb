class Currency < ActiveRecord::Base
  require 'open-uri'

  def self.parse_currencies_from_xml
    doc = Nokogiri::XML(open(Rails.application.secrets.european_central_bank_url))
    parser = Nori.new
    hash = parser.parse(doc.to_s)
    hash["gesmes:Envelope"]["Cube"]["Cube"]["Cube"].each do |currency|
      c = Currency.find_by(name: currency["@currency"])
      c.rate = currency["@rate"].to_f
      if c.save!
        puts 'updated'
      else
        puts 'error'
      end
    end
  end

end
