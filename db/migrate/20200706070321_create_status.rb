class CreateStatus < ActiveRecord::Migration[6.0]
  def up
    create_table :statuses do |t|
      t.string :name
    end
    add_index :statuses, [:name], name: :pgroonga_status_index, using: :pgroonga
  end
  def down
    drop_table :statuses
  end
end
