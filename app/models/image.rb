class Image < ApplicationRecord
  
  
  validates :url, presence: true
  belongs_to :product
  
  # The below method means the same as the above association. Rails is just doing the shorthand with "belongs_to :product"
  # def products
  #   Product.find_by(id: product_id)
  # end

end
