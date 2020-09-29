class Image < ApplicationRecord
  validates :url, presence: true
  
  belongs_to :product
  
  # def products
  #   Product.find_by(id: product_id)
  # end

end
