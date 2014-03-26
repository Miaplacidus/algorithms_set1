module Set1

  # Swap the smallest number in the array with the first element.
  # Eg. swap_small([5,7,2,9]) # => [2, 7, 5, 9]
  # O(n)
  def self.swap_small(array)
    min = array.first
    index = 0
    for i in 0...array.length
      if min > array[i]
        min = array[i]
        index = i
      end
    end
    first = array.first
    array[0] = min
    array[index] = first
    array
  end

# Given an array of numbers and the number x, find out if there are
# two numbers in the array that add up to x (just return true or false)
  # O(n^2)
  def self.find_sum_2(array, sum = 0)

    diff = 0

    for i in 0...array.length
      diff = sum - array[i]
      for n in 0...array.length
          if array[n] == diff
            return true
          end
      end
    end
    return false
  end
# O(n^3)
  def self.find_sum_3(array)
    diff = 0
    sum = 0
    for i in 0...array.length
      diff = sum - array[i]
      for n in 0...array.length
        diff2 = diff - array[n]
        for k in 0...array.length
          if array[k] == diff2
            return true
          end
        end
      end
    end
    return false

  end
end
