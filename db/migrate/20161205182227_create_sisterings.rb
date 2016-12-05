class CreateSisterings < ActiveRecord::Migration[5.0]
  def change
    create_table :sisterings do |t|
      t.references :sister1, foreign_key: true
      t.references :sister2, foreign_key: true
      t.timestamps
    end
    add_index :sisterings, [:sister1_id, :sister2_id], :unique => true
  end
end
