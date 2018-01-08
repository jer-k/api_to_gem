[
  'Santa Monica Public Library',
  'San Francisco Public Library'
].each do |library|
  Library.find_or_create_by(name: library)
end