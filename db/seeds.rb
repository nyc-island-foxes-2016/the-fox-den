dens = ["East Coast", "West Coast", "Central", "Way Up North", "Way Down South"]

dens.each do |name|
  Den.create!(name: name)
end
