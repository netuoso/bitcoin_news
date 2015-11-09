class HomeController < ApplicationController

  def index
  end

  def crypto_ticker
    if params[:currency] == 'btc'
      case params[:exchange]
      when 'bitstamp'
        render json: JSON.parse(RestClient.get('https://www.bitstamp.net/api/ticker/'))
      when 'btce'
        render json: JSON.parse(RestClient.get('https://btc-e.com/api/3/ticker/btc_usd'))
      when 'coinbase'
        render json: JSON.parse(RestClient.get())
      end
    elsif params[:currency] = 'ltc'
      render json: JSON.parse(RestClient.get('https://btc-e.com/api/3/ticker/ltc_btc'))
    end
  end

end