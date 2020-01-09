class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :latinName
      t.string :commonName
      t.string :description

      t.timestamps null: false
    end
  end
end
