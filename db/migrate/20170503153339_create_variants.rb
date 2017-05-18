class CreateVariants < ActiveRecord::Migration[5.0]
  def change
    create_table :variants do |t|
      t.string :size_name
      t.decimal :price
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
