class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :lastname
      t.integer :role
      t.integer :admin_id
      t.integer :supervisor_id
      t.integer :executive_id

      t.timestamps
    end
  end
end
