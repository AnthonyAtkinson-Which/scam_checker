class CreateScams < ActiveRecord::Migration
  def change
    create_table :scams do |t|
      t.string :title
      t.string :email
      t.string :text

      t.timestamps null: false
    end
  end
end
