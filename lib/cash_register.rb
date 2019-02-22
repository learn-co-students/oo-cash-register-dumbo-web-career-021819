require "pry"
class CashRegister

  attr_accessor :total, :discount, :items, :amounts_added

  @@all = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @@all << self
    @amounts_added = []
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
    quantity.times do
      @items << item
    end
    quantity.times do
      @amounts_added << price
    end
  end

  def apply_discount
    if @discount != 0
      @total = (@total - (@total*(@discount.to_f/100))).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @amounts_added[-1]
    @amounts_added.pop
    # binding.pry
  end
end
