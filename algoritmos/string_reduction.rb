=begin
String Reduction
Have the function StringReduction(str) take the str parameter being passed 
and return the smallest number you can get through the following reduction 
method. 
The method is: Only the letters a, b, and c will be given in str and you 
must take two different adjacent characters and replace it with the third. 
For example "ac" can be replaced with "b" but "aa" cannot be replaced with 
anything. This method is done repeatedly until the string cannot be further 
reduced, and the length of the resulting string is to be outputte.

For example: if str is "cab", then "ca" can be reduced to "b" and you get "bb"
(you can also reduce it to "cc"). 
The reduction is done so the output should be 2. 
If str is "bcab", "bc" reduces to "a", 
so you have "aab", then "ab" reduces to "c", and the final string "ac" 
is reduced to "b" so the output should be 1.
Examples
Input: "ccabc"
"cba"
"aa"
Output: 2
Input: "cccc"
Output: 4
=end

#"cab"
#["c", "a", "b"]
#"b"
#["b", "a", "b"]
#["b", "b"] ="bb"
def string_reduction(str)
  arreglo_reducido = str.chars
  contador = 0

  while true
    break if arreglo_reducido[contador + 1].nil?
    values = select_reduction(
      [
        arreglo_reducido[contador], 
        arreglo_reducido[contador + 1]
      ].compact
    )

    if values[1]
      arreglo_reducido[contador] = values[0] #"b"
      arreglo_reducido.delete_at(contador + 1)
    end
    contador += 1 
  end
  string_reducido = arreglo_reducido.join("")

  if irreductible?(string_reducido)
    string_reducido.size
  else
    string_reduction(string_reducido)
  end
end

#["a", "a"] => "aa"
#["b"] => "b"
#["a", "b"] => "c"
#["a", "c"] => "b"
#["b", "c"] => "a"
def select_reduction(par)
  return nil, false if par.size == 1 || par[0].eql?(par[1])
  return "a", true unless par.include?("a")
  return "b", true unless par.include?("b")
  return "c", true unless par.include?("c")
end

def irreductible?(str)
  return true if str.squeeze.length == 1
end

p string_reduction("abcabc") #aa
p string_reduction("cccc") #cccc
p string_reduction("bcab") #b
p string_reduction("cab") #bb