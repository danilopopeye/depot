class Cart
	attr_reader :items

	def initialize
		@items = []
	end

	def add_product(product)
		current_product = @items.find {|item| item.product == product }
		if current_product
			current_product.increment_quantity
		else 
			@items << CartItem.new(product)
		end
	end
end
