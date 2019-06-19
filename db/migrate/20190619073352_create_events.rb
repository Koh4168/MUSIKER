class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string    :name
      t.text      :text
      t.text      :image
      t.text      :link
      t.datetime  :scedule
      t.string    :place
      t.string    :price
      t.timestamps null:true
     
    end
  end
end