class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |item| 
      item[:name]
    }.flatten.sort
  end

  def cheap
    @items.select {
        |item| item[:price] < 30
    }
  end

  def out_of_stock
    @items.select {
        |item| item[:quantity_by_size].length == 0
    }
  end

  def stock_for_item(name)
    item = @items.select { |item| 
      item[:name] == name
    }
    stock = item.map {
        |item| item[:quantity_by_size]
    }
    return stock[0]
  end

  def total_stock
    total = 0
    names = self.item_names
    names.each { |name|
        stock = self.stock_for_item(name)
        stock.map { |_, size| total += size}
    }
    return total
  end

  private
  attr_reader :items
end
