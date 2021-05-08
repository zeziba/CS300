class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.text :data
      t.text :user

      t.timestamps
    end
  end
end
