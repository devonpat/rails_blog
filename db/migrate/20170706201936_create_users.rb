class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.boolean :chickens
      t.boolean :bees
      t.boolean :bats
      t.boolean :dogs
      t.boolean :cats
      t.string :home_type

      t.timestamps
    end
  end
end
