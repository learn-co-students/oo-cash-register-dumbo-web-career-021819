require 'pry'
class CashRegister

  attr_reader :discount
  attr_accessor :total

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @all = []
  end

  def add_item(item_name, item_price, quantity = 1)
    quantity.times {@all << item_name}
    @total += ( item_price * quantity )
    @most_recent_price = item_price
  end

  def apply_discount
    if @discount != 0
      # binding.pry
      @total *= (1 - @discount.to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @all
  end

  def void_last_transaction
    @all.pop
    @total -= @most_recent_price
  end

end
