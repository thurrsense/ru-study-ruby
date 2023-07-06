module Exercise
  module Arrays
    class << self
      def max_finder(array)
        max = array[1]
        for a in array
          max = a if a > max
        end
        max
      end

      def replace(array)
        max = max_finder(array)
        array.each_with_index do |a, index|
          array[index] = max if a.positive?
        end
        array
      end

      def search(array, query, low = 0, high = array.length - 1)
        return -1 if low > high

        mid = (high + low) / 2
        return mid if array[mid] == query

        if array[mid] > query
          search(array, query, low, mid - 1)
        else
          search(array, query, mid + 1, high)
        end
      end
    end
  end
end
