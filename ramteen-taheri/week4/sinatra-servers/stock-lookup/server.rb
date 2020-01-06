require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'

get '/' do
    erb :stock_form
end

#form submits to here
get '/lookup' do
    @symbol = params[:stock_symbol]

    #initialise with api key
    StockQuote::Stock.new(api_key: 'pk_16a849fd637243a79fff90fa4d42bc5d')

    stock = StockQuote::Stock.quote @symbol

    @price = stock.latest_price
    @company = stock.company_name

    erb :results
end
