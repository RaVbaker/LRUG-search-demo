class Product < ActiveRecord::Base
  
  searchable do 
    # boosts here are for index time boosting, not search time
    text :name, boost: 1.1
    text :description, boost: 0.8
    text :producer_name, boost: 0.9
    text :category_name, boost: 0.9
    float :price, trie: true
    
    #need for faceting:
    string :category_name
    string :name
  end
end
