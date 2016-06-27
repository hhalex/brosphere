json.array!(@hops) do |hop|
  json.extract! hop, :id, :name, :version, :origin, :alpha, :amount, :use, :time, :notes, :type, :form, :beta, :hsi, :display_amount, :inventory, :display_time
  json.url hop_url(hop, format: :json)
end
