class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :name
      t.string :family_name
      t.datetime :date
      t.string :gender
      t.string :address
      t.string :city
      t.string :country
      t.string :class_c
      t.string :year

      t.timestamps
    end
  end
end
