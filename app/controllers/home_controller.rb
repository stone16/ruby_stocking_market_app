class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_f96573054f054ea89d898452cbf16cb2')

    if params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  end

  def about
    puts 'about page'
  end
end
