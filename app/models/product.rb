class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :inventory, numericality: {greater_than: 0}
  
  has_many :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :orders, through: :carted_products
  has_many :images
  # This "image" method below is the same as above. Above is just the shorthand.
    # def image
    #   Image.where(product_id: id)
    # end
  
  belongs_to :supplier
  # This "supplier" method below is the same thing as above. Above is just shorthand.
    # def supplier
    #   Supplier.find_by(id: supplier_id)
    # end


  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + tax
  end

end