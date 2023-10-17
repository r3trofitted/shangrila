class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.boolean :finalized, null: false, default: false
      t.string :player, null: false
      t.string :name, null: false
      t.string :role, null: false
      t.string :origins
      t.string :personality
      t.string :clothing
      t.string :hairstyle
      t.string :affectation

      t.timestamps
    end
  end
end