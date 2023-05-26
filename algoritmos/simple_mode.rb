=begin
Simple mode
Have the function simple_mode(arr) take the array of
numbers stored in arr and return the number that appears most
frequently(the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should
be 4. If there is more than one mode return the one that appeared in the array first.
(ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is no mode,
return -1. The array will not be empty.
=end

def simple_mode(arr)
  #[5, 10, 10, 6, 5]
  frecuencia = Hash.new(0)
  arr.each do |num|
    frecuencia[num] += 1
  end
  #frecuencia[5] = 0 + 1
  # {5: 1}
  #frecuencia[10] = 0 + 1
  # {5 : 1, 10 : 1 }
  #frecuencia[10] = 1 + 1
  # {5 : 2, 10 : 2, 6: 1}
  valores_frecuencia = frecuencia.values
  # [2, 2, 1]
  maximo_valor = valores_frecuencia.max
  # 2
  return -1 if maximo_valor.eql? valores_frecuencia.min
  
  mas_frecuente = frecuencia.select{|k, v| v.eql? maximo_valor }.keys
  # {5:2, 10:2} [5, 10]
  mas_frecuente.first
end

p simple_mode([5, 10, 10, 8, 5, 10])
p simple_mode([5, 10, 8, 9])
p simple_mode([5  , 10, 10, 8, 5])