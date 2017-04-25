ActiveAdmin.register Product do
  permit_params :name, :description, :category_id, :menu_id
end
