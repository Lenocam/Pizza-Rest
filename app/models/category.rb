class Category < ApplicationRecord
  belongs_to :menu, dependent: :destroy
  has_many :products
end
