def rotate_matrix(array)
  array.transpose.map { |row| row.reverse}
end
