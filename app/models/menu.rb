class Menu < ApplicationRecord
  has_many :categories
  validates_presence_of :title
end
