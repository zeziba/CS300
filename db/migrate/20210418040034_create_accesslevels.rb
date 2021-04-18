class CreateAccesslevels < ActiveRecord::Migration[5.2]
  def change
    create_table :accesslevels do |t|
      t.string :accesslevelid

      t.timestamps
    end
  end
end
