class Fixnum
  define_method(:coin_return) do
    coins = {1 => 'number of pennies', 5 => 'number of nickels', 10 => 'number of dimes', 25 => 'number of quarters'}
    cents_arr = [25, 10, 5, 1]
    input = self
    total = ""

    cents_arr.each do |x|
      if input >= x
        total = total + "#{coins[x]} = #{input/x}"
        input -= (x * (input/x))
        if input == 0
          break
        end
        total = total + ", "
      end
    end
    return total
  end
end
