class Array

  def two_sum
    sum_arr = []

    self.each_with_index do |ele, idx1|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx1 && ele + ele2 == 0
          sum_arr << [idx1, idx2]
        end
      end
    end
    
    sum_arr
  end
end