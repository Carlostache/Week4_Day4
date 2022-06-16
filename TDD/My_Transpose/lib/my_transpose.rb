def my_transpose(matrix)
  transposed = []

  i = 0

  while i < matrix.length
    new_row = []
    idx = 0 
      while idx < matrix.length
        new_row << matrix[idx][i]
        idx += 1
      end
    transposed << new_row
    i += 1
  end

  transposed

end