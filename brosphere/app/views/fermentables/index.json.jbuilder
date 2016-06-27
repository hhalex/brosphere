json.array!(@fermentables) do |fermentable|
  json.extract! fermentable, :id, :name, :version, :type, :origin, :supplier, :amount, :yield, :color, :add_after_boil, :notes, :type, :display_amount, :inventory, :coarse_fine_diff, :moisture, :diastatic_power, :protein, :max_in_batch, :recommend_mash, :IBU_gal_per_lb, :potential, :display_color
  json.url fermentable_url(fermentable, format: :json)
end
