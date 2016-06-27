class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.integer :version
      t.string :origin
      t.float :alpha
      t.float :amount
      t.string :use
      t.float :time
      t.string :notes
      t.string :type
      t.string :form
      t.float :beta
      t.float :hsi
      t.float :display_amount
      t.float :inventory
      t.string :display_time

      t.timestamps null: false
    end
  end
end
