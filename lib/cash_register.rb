class CashRegister

    attr_accessor :discount, :total
    attr_reader :all_items, :old_total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
        @old_total = 0
    end

    def add_item(title, price, quantity = 1)
        @old_total = @total
        @total += price * quantity
       quantity.times{@all_items << title}
    end
    
    def apply_discount
       if @discount == 0
        return "There is no discount to apply."
       else @total -= (@total * (0.01 * @discount))
        "After the discount, the total comes to $#{@total.round}."
       end
    end

    def items
        return @all_items
    end

    def void_last_transaction
        @total = @old_total
    end
end
