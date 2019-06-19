class CreateMusicalInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :musical_instruments do |t|
      t.string :name
      t.timestamps null: true
    end
  end
end
