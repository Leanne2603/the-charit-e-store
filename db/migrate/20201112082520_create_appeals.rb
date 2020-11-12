class CreateAppeals < ActiveRecord::Migration[6.0]
  def change
    create_table :appeals do |t|
      t.string :appeal, null:false
      t.string :description, null:false
      t.string :recipient, null:false
      t.string :delivery_address, null:false
      t.boolean :active
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
