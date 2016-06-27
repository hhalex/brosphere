class CreateFermentables < ActiveRecord::Migration
  def change
    create_table :fermentables do |t|
      t.string :name
      t.integer :version
      t.string :type
      t.string :origin
      t.string :supplier
      t.float :amount
      t.float :yield
      t.float :color
      t.boolean :add_after_boil
      t.text :notes
      t.string :type
      t.float :display_amount
      t.float :inventory
      t.float :coarse_fine_diff
      t.float :moisture
      t.float :diastatic_power
      t.float :protein
      t.float :max_in_batch
      t.boolean :recommend_mash
      t.float :IBU_gal_per_lb
      t.float :potential
      t.string :display_color

      t.timestamps null: false
    end
  end
end
