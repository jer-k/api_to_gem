class CreateLibrary < ActiveRecord::Migration[5.1]
  def change
    create_table :libraries do |t|
      t.string :name

      t.timestamps
    end
  end
end
