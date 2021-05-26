class AddDataToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :clicks, :integer
    add_column :projects, :last_viewed, :datetime
    add_column :projects, :uri, :string
    add_column :projects, :name, :string
  end
end
