class AddApprovedField < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.boolean :approved
    end
  end
end
