require "api/fedex/version"

module Fedex
  class Rates
    def self.get
      begin
        datos = RestClient.get 'https://pokeapi.co/api/v2/pokemon/?offset=1000&limit=1000', {'Content-Type': 'application/json', 'Accept': 'application/json'}
        return JSON.parse datos.to_str
      rescue RestClient::ExceptionWithResponse => e
        return JSON.parse(e.response).to_json
      rescue => e
        return (44).to_json
      end
    end
  end

end
