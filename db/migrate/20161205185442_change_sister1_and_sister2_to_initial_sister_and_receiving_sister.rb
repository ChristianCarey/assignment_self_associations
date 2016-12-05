class ChangeSister1AndSister2ToInitialSisterAndReceivingSister < ActiveRecord::Migration[5.0]
  def change
    rename_column :sisterings, :sister1_id, :initial_sister_id
    rename_column :sisterings, :sister2_id, :receiving_sister_id
  end
end
