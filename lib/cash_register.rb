require 'pry'

class CashRegister

attr_accessor :total, :discount, :item_array, :last_price

def initialize(employee_discount = 0)
  @total = 0
  @discount = employee_discount
  @item_array = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
    quantity.times do
      item_array << title
    end
    @last_price = (price*quantity)
    @total += @last_price
  end

def apply_discount
  if @discount > 0
    @total -= (@total * (@discount.to_f / 100))
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end
end

def items
  @item_array
end

def void_last_transaction
  @total -= @last_price
end

end
