class CreateProjectProjectors < ActiveRecord::Migration[5.2]
  def change
    create_table :project_projectors do |t|

      t.timestamps
    end
  end
end
