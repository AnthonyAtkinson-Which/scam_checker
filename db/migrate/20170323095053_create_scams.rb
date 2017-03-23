class CreateScams < ActiveRecord::Migration
  def change
    create_table :scams do |t|
      t.string :title
      t.string :sender
      t.string :messsage
      t.string :result

      t.timestamps null: false
    end
  end
end
