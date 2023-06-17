class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.date :incident_date
      t.text :description
      t.string :summary
      t.references :user_normal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
