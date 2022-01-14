class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_f96573054f054ea89d898452cbf16cb2')

    if params[:ticker] == ''
      @nothing = 'Please enter some symbol for searching. '
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue StandardError => e
        @error = 'Wrong ticker, please check your input'
      end
    end
  end

  def about
    puts 'about page'
  end
end
