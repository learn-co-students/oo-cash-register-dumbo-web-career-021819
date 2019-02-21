class CashRegister
  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(item, price, quantity=1)
    @@price = price
    quantity == [] ? @total += price : @total += ( price * quantity )
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    elsif discount < 100
      discount_total = @total * ( @discount / 100.0 )
      @total -= discount_total
      @total = @total.to_i
    end
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @@price
  end

end
