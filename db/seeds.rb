# Clean up
User.delete_all
Product.delete_all
Lead.delete_all

# Users
User.create!(username: "Example User", email: "user@example.com")

# Products
product_attr_sets = Array.new(10) do
  {
    name: Faker::Commerce.product_name,
    description: Faker::Commerce.color,
  }
end
Product.create!(product_attr_sets)
