class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :plan_description
      t.integer :plan_owner_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
