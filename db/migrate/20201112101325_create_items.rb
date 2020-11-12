class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.decimal :price, null: false
      t.boolean :available, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
