# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'JSON'
products = JSON.load open(Rails.root.to_s+"/db/seeds/products.json")
Product.transaction do
  Product.delete_all
  products.each do |product|
    Product.create product
  end
end
