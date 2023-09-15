def generate_uuid
  characters = '1234567890abcdef'
  uuid = []
  8.times do 
    uuid << characters.chars.sample
  end
  uuid << '-'
  4.times do
    uuid << characters.chars.sample
  end
  uuid << '-'
  4.times do
    uuid << characters.chars.sample
  end
  uuid << '-'
  4.times do
    uuid << characters.chars.sample
  end
  uuid << '-'
  12.times do
    uuid << characters.chars.sample
  end
  uuid.join
end

p generate_uuid

# LS solution:

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p generate_UUID