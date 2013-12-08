class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_id, :null => false
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
