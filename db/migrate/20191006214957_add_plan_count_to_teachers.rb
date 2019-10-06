class AddPlanCountToTeachers < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :plans_count, :integer
  end
end
