class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.date :claim_date
      t.date :due_date
      t.integer :priority
      t.integer :status
      t.references :incident, null: false, foreign_key: true
      t.references :user_normal, null: false, foreign_key: true
      t.references :user_administrator, null: false, foreign_key: true
      t.references :user_supervisor, null: false, foreign_key: true
      t.references :user_executive, null: false, foreign_key: true

      t.timestamps
    end
  end
end
