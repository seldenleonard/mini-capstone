class Image < ApplicationRecord
  validates :url, presence: true
  
  belongs_to :products
  
  # def products
  #   Product.find_by(id: product_id)
  # end

end
