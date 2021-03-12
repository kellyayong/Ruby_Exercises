stock = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock)
    buy_price = 0
    buy_day = 0
    sell_price = 0
    highest_profit = 0
    stock.each_with_index do |price,day|
        current_price = price
        future_prices = stock[day+1..-1]
        future_prices.each do |future_price|
            profit = future_price - current_price
            if profit > highest_profit 
                highest_profit = profit
                buy_day = day
                buy_price = price
                sell_price = future_price
            end
        end
    end
    puts "Buy at #{buy_price} on day #{buy_day} and sell at #{sell_price} to earn the hights profit at #{highest_profit}"
end

stock_picker(stock)