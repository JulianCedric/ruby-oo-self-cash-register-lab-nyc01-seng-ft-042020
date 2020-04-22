class CashRegister
    attr_accessor :total, :discount 

    def initialize(discount = 0)
        @total = 0 
        @discount = discount
        @item = []     
    end

    def total 
        @total 
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        quantity.times do 
            @item << title 
        end    
    end 

    def apply_discount
        self.total = @total - (@total * @discount)
    end 

    def items
    # returns an array containing all items that have been added 
        # which means an instance is instantiated with an empty array - hence, @item = [] above 
        @item 
    end 

end 
