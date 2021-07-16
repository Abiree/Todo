class CreateListes < ActiveRecord::Migration[6.1]
  def change
    create_table :listes do |t|
      t.string :author
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
