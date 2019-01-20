require 'csv'
require 'active_support/inflector'

puts "STARTRUN"

seen = Hash.new
line = 0
legend = nil

CSV.foreach("moil.csv") do |row|
  line += 1
  if line == 1
    legend = row
    next
  end

  id = row[15].to_i
  idx = row[0].to_i
  row[9] = row[9].titleize

  if seen.has_key?(id)
    seen[id] = row if idx > seen[id][0].to_i
  else
    seen[id] = row
  end
end

CSV.open("filtered.csv", "wb") do |csv|
  csv << legend
  seen.each do |k,v|
    csv << v
  end
end

puts "ENDRUN"
