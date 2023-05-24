class Product
    attr_reader :name, :price
    @@total_count = 0
  
    def initialize(name, price)
      @name = name
      @price = price
      @@total_count += 1
    end
  
    def self.total_count
      @@total_count
    end
  
    def self.average_price(products)
      total_price = products.reduce(0) { |sum, product| sum + product.price }
      total_price / products.length
    end
  
    def self.most_expensive(products)
      products.max_by(&:price)
    end
  end
  
  product1 = Product.new("Chair", 50)
  product2 = Product.new("Table", 100)
  product3 = Product.new("Lamp", 30)
  
  puts "Total Products: #{Product.total_count}"
  puts "Average Price: ksh #{Product.average_price([product1, product2, product3])}"
  puts "Most Expensive Product: #{Product.most_expensive([product1, product2, product3]).name}"
  