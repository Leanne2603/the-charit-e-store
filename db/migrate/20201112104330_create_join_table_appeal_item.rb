class CreateJoinTableAppealItem < ActiveRecord::Migration[6.0]
  def change
    create_join_table :appeals, :items do |t|
      # t.index [:appeal_id, :item_id]
      # t.index [:item_id, :appeal_id]
    end
  end
end
