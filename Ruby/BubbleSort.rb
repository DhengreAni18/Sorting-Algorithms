#!/usr/bin/env ruby

# Run it from a terminal as a ruby script, with space separated numbers:
# ruby BubbleSort 23 12 3 99 129 482 12

array = ARGV
array.map!(&:to_i)
puts 'Your unsorted numbers'
p array

class BubbleSort
  class << self
    def sort(array)
      iterable_length = array.size - 1
      return array unless iterable_length.positive?

      iterable_length.times do
        iterable_length.downto(1) do |index|
            last_index = index - 1
            if array[index] < array[last_index]
               array[index], array[last_index] = array[last_index], array[index]
            end
        end
      end

      array
    end
  end
end

puts "\nNumbers sorted:"
p BubbleSort.sort(array)
