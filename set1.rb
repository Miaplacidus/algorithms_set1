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
  def self.find_sum_2(array, sum = 0)
    #  1. for each number in array, diff = array[i] - sum
    #  2. then check if each number in the array (including at i) is
    # equal to diff
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

  def self.find_sum_3(array)
  end
end
