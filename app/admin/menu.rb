ActiveAdmin.register Menu do
  skip_before_action :set_menus
  permit_params :title, :description

end
