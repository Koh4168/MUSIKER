class CreateEventGroopings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_groopings do |t|
      t.integer :event_id
      t.integer :grooping_id
      t.timestamps
    end
    add_index :event_groopings, :event_id
    add_index :event_groopings, :grooping_id
    add_index :event_groopings, [:event_id,:grooping_id],unique: true
  end
end
