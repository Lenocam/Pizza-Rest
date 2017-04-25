class AddColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :sizes, :json
  end
end
