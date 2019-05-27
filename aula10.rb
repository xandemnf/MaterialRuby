#brincando com GEMS

#gem install lerolero

require "lerolero_generator"

puts LeroleroGenerator.sentence
puts LeroleroGenerator.sentence(5)

#gem install faker

require "faker"

Faker::Name.name
Faker::Internet.email