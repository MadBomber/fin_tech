# fin_tech/lib/fin_tech/fibonacci_retracement.rb

class FinTech
  class << self

    #######################################################################
    # Calculates the Fibonacci Retracement levels for a given price range.
    #
    # Fibonacci Retracement: Fibonacci retracement uses Fibonacci ratios to 
    # identify potential support and resistance levels based on the price's 
    # previous significant moves.
    #
    # @param start_price [Float] The starting price of the range.
    # @param end_price [Float] The ending price of the range.
    # @return [Array] An array of Fibonacci Retracement levels.
    #
    def fibonacci_retracement(start_price, end_price)
      retracement_levels = []

      retracement_levels << end_price
      retracement_levels << start_price

      fibonacci_levels = [0.236, 0.382, 0.5, 0.618, 0.786]

      fibonacci_levels.each do |level|
        retracement = start_price + (end_price - start_price) * level
        retracement_levels << retracement
      end

      retracement_levels
    end
  end
end

