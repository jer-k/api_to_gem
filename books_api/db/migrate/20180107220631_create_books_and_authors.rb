class CreateBooksAndAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end

    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.integer :published

      t.references :author

      t.timestamps
    end
  end
end
