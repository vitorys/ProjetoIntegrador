require 'csv'

puts "Importando estados..."
CSV.foreach(Rails.root.join("estados.csv"), headers: true) do |row|
  Estado.create! do |estado|
    estado.id = row[0]
    estado.nome = row[1]
  end
end

puts "Importando cidades..."
CSV.foreach(Rails.root.join("cidades.csv"), headers: true) do |row|
  Cidade.create! do |cidade|
  	cidade.estado_id = row[1]
    cidade.nome = row[2]
  end
end