class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.primary_key :id
      t.text :data
      t.reference :user
      t.reference :comment

      t.timestamps
    end
  end
end
