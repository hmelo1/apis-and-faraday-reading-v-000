class SearchesController < ApplicationController
  def search
  end

  def foursquare
   Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = O2S1JF343O15KATMNLLWCOIMVDVPUI4TATZYNKHUF22AKUND
     req.params['client_secret'] = G33CJ1Q2AGVJ4GWLDYUGBMXENJSWYC1MFOA25IWBTJNR3YU0
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   render 'search'
 end
end
