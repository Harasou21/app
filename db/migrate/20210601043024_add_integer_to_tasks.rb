class AddIntegerToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :integer, :integer
  end
end
