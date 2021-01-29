class Supplier < ApplicationRecord
  
  has_many :products
  
  # The below method means the same as the above association. Rails is just doing the shorthand with "has_many :products"
  # def products
  #   Product.where(supplier_id: id)
  # end

end