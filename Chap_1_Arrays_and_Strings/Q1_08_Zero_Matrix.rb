require 'pp'
def zero_column(matrix, col_index)
  matrix.each_with_index do |item, row_index|
    item[col_index] = 0
  end
end
def zero_matrix(matrix)
  zMatrix = Marshal.load(Marshal.dump(matrix))
  matrix.each_with_index{|row,i|
    row.each_with_index{|value,j|
      if value==0
        zMatrix[i].map!{|output| output=0}
        zero_column(zMatrix,j)
      end
    }
  }
  return zMatrix
end
