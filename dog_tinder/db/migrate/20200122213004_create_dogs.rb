class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.text :enjoys

      t.timestamps
    end
  end
end
