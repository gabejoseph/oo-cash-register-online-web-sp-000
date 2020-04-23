require 'pry'

class CashRegister 
  
  attr_accessor :total, :discount, :quantity
  

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 0)
    add_item(title, price, quantity = 0).each do |x, y, z|
      @@item << x
    end
    if quantity > 0
      @total += price*quantity
    else 
      @total += price 
    end
  end
  
  def apply_discount 
    if @discount > 0
      newdiscount = 1.0-(@discount.to_f)/(100.to_f)
      @total = @total*newdiscount
      @total.to_i
      return "After the discount, the total comes to $#{@total.to_i}."
    else 
      return "There is no discount to apply."
    end
    # binding.pry
  end
  
  def item
    @@items
  end

end
