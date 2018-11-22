require 'pry'

class CashRegister
attr_accessor :total, :discount, :all_items, :last_item

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = {}
  end



  def add_item(item, price, quantity = 1)
    quantity.times {@items << item}
    @item = item
    @price = price
    @total += (price * quantity.to_f)
    @last_item = [item, price]
  end

  def apply_discount
    #binding.pry
    if @discount == 0
      return "There is no discount to apply."
      @total
    else
      @total = @price * ((100.0 - discount.to_f)/100)
      return "After the discount, the total comes to $#{@total.to_i}."
      @total
    end
  end

  def items # all items in the checkout basket
    @items
  end

  def void_last_transaction
    @items = @items.pop
    @total = @total - @last_item[1]
  end

end
