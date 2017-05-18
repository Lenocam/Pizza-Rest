class Variant < ApplicationRecord
  belongs_to :product, dependent: :destroy
  validates_uniqueness_of :size_name, scope: :product_id
end
