class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :type_dish
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
