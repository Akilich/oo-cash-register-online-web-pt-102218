class CashRegister
 attr_accessor :total, :discount, :items, :previous_total
   def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @previous_total = 0
  end

def add_item(title, price, quantity= 3)
  self.total += price
    @previous_total << price
    
   def apply_discount
    return "There is no discount to apply." if @discount == 0
     @total *= 100 - @discount
    @total /= 100
    "After the discount, the total comes to $#{total}."
  end
   
   def items
    @items = []
  end
  
   def void_last_transaction
    @total = total - self.total
  end
end
end