
def my_unique(array)
  raise ArgumentError if array.is_a?(String)
  hash = Hash.new(0)
  array.each { |ele| hash[ele] += 1 }
  hash.keys
end