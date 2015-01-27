class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.text :name
      t.text :breed
      t.decimal :age
    end
  end
end
