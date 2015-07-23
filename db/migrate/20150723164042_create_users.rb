class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :join_date
      t.string :image
      t.string :location
      t.string :descrip
      t.string :completion

      t.timestamps null: false
    end
  end
end
