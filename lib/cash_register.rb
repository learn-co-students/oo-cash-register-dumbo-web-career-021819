
require 'pry'
class CashRegister

attr_accessor :total, :employee_discount, :items
#, :discount, :price, :title, :quantity



  def initialize(employee_discount = nil)
    @total = 0.00
    @employee_discount = employee_discount
    @items = []
  end

  def discount
     self.employee_discount
  end

  def items
    @items
  end
 def add_item(title,price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    items << title
    end
    @last_transaction_amount = @total
    @total
 end


  def apply_discount
    if @employee_discount > 0
      @employee_discount = @employee_discount / 100.to_f
      @total = @total - (@total *(@employee_discount))
       "After the discount, the total comes to $#{@total.ceil}."
    else
    end
    puts  "There is no discount to apply."
    end
  end

  def void_last_transaction
     @total -= @last_transaction_amount
  end
end
