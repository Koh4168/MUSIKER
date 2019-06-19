class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string    :name
      t.text      :text
      t.text      :image
      t.text      :link
      t.timestamps null: true
      
    end
  end
end
