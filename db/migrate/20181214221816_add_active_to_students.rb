class AddActiveToStudents < ActiveRecord::Migration
  def change
              #which table, #name of new column, #type, etc
    add_column :students, :active, :boolean, default: false
  end
end
