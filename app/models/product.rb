class Product < ActiveRecord::Base
  
  searchable do
    text :name, boost: 1.1
    text :description, boost: 0.8
    text :producer_name, boost: 0.9
    float :price, trie: true
    
  end
end
