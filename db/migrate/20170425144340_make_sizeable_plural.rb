class MakeSizeablePlural < ActiveRecord::Migration[5.0]
  def change
    rename_table :sizeable, :sizeables
  end
end
