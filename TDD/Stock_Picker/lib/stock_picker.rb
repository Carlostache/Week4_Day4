[100, 99, 98]


def stock_picker(stock_prices)
  days = []
  hash = {}
  stock_prices.each_with_index do |price, day|
    stock_prices.each_with_index do |price2, day2|
      if day2 > day
        hash[price2 - price] = [day, day2]
      end
    end
  end
  sorted = hash.sort_by { |k, v| k }
  sorted[-1][1]
end

