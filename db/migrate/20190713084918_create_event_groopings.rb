class CreateEventGroopings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_groopings do |t|

      t.timestamps
    end
  end
end
