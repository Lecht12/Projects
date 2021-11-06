class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :family_name
      t.datetime :date
      t.string :gender
      t.string :address
      t.string :citty
      t.string :contry
      t.string :classe
      t.string :year

      t.timestamps
    end
  end
end
