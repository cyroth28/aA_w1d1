def stock_picker(arr)
  best_days = []
  best_profit = 0
  (0...arr.length-1).each do |buy_day|
    (buy_day+1...arr.length).each do |sell_day|
      if arr[sell_day] - arr[buy_day] > best_profit
        best_profit = arr[sell_day] - arr[buy_day]
        best_days = [buy_day, sell_day]
      end
    end
  end
  best_days
end
