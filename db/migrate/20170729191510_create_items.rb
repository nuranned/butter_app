class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.boolean :active

      t.timestamps
    end
  end
end
