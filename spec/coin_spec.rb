require('rspec')
require('coin_return')

describe('Fixnum#coin') do

  it('returns number of pennies = 1 when 1 cent is entered') do
    expect((1).coin_return).to(eq("number of pennies = 1"))
  end

  it('returns number of pennies = 2 when 2 cents is entered') do
    expect((2).coin_return).to(eq("number of pennies = 2"))
  end

  it('returns number of nickels = 1 when 5 cents is entered') do
    expect((5).coin_return).to(eq("number of nickels = 1"))
  end

  it('returns number of Q=4, D=2, P=3 when 123 cents is entered') do
    expect((123).coin_return).to(eq("number of quarters = 4, number of dimes = 2, number of pennies = 3"))
  end
end
