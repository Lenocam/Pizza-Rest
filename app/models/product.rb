class Product < ApplicationRecord
  belongs_to :category
  VARIANTS = ['small', 'medium', 'large', 'xlarge', 'xxlarge'].freeze

  
=begin
  def sizes_form_for
    #collection = sizes.where(product_id: id)
    collection = sizes.all

    collection.any? ? collection : sizes.build
  end
=end
end
