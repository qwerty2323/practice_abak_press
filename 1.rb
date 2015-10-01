# Даны два списка (массива) из различных (возможно повторяющихся) целых чисел, а также могут быть и “дырки” - nil’ы,
# при этом каждый из массивов может в качестве элементов содержать подмассивы также из целых чисел.
# Пример: массив a = [[4, 19], nil, [32, 41], 65], b = [234, 0, 21, [54]]. Необходимо написать программу на ruby,
# на выходе которой будет хеш, ключами которого будут числа из обоих массивов a и b, а соотв. значениями - сумма,
# сколько раз встречается число как в первом, так и во втором массиве.


def arrays_to_hash(a, b)
  arr = array_to_numbers(a)
  arr = array_to_numbers(b, arr)
  number = {}
  arr.each do |a|
    if number[a].nil?
      number[a] = 1
    else
      number[a] += 1
    end
  end
  number
end

def array_to_numbers(ns, ns_arr = [])
  ns.each do |n|
    if !n.nil? && n.is_a?(Fixnum)
      ns_arr << n
    elsif !n.nil? && n.is_a?(Array)
      n.each do |i|
        ns_arr << i
      end
    end
  end
  ns_arr
end

a = [[4, 19], nil, [54, 21], 4, 21]
b = [234, 0, 21, [54]]
p arrays_to_hash(a, b)