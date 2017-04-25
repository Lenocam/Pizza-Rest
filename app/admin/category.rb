ActiveAdmin.register Category do
  #belongs_to :Menu
  skip_before_action :set_categories
  permit_params :title, :description, :menu_id


end
