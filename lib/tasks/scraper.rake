namespace :scraper do
  desc "Scraper rake task to get stock price."
  task scrape: :environment do

    require 'httparty'
    require 'nokogiri'
    require 'populator'

    Post.destroy_all

    class Scraper


    def get_price(symbol)
        @symbol = symbol.downcase
        yahoo_url = "http://finance.yahoo.com/q?s=" + @symbol
        stock_page = HTTParty.get(yahoo_url)
        @page = Nokogiri::HTML(stock_page.body)
        xpath_search = "//span[@id='yfs_l84_" + @symbol + "']"
        @price = @page.xpath(xpath_search).first.content
        puts  @symbol
        puts  @price
        result = @price
        result1 = @symbolaccount_number
        @price = ["http://finance.yahoo.com/q?s=" + @symbol].each do |price|
          @post=Post.new
          @post.price = @price
          @post.symbol = @symbol

          @post.save

        end
      end


    end
    def test
      scraper = Scraper.new
      scraper.get_price("AERL.L")
      scraper.get_price("GOOG")
      scraper.get_price("MSFT")




    end

    test

  end

  end


