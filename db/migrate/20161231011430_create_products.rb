class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :cas
      t.string :chem
      t.string :use
      t.string :sum
      t.string :mol
      t.string :state
      t.string :vap

      t.timestamps
    end
  end
end
