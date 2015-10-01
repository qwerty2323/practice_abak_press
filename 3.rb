# Существует множество из N целых чисел (массив из N уникальных целых чисел).
# Необходимо написать метод (программу), при N вызовах которого каждый раз
# будет выдаваться случайное, неповторяющееся число из этого массива. Чтобы
# было удобнее, представьте, что эти числа - баннеры клиентов, которые
# необходимо выводить в случайном порядке, но при этом нельзя повторяться,
# чтобы не обидеть никого из этих клиентов.

class Banners

  def initialize(arr)
    @ids_array = arr
    @ids_hash = {}
    fullHash
  end

  def random
    fullHash if @ids_hash.find_all{ |k,v| v==0 }.empty?
    result_arr = @ids_hash.find_all{ |k,v| v==0 }
    r = rand(result_arr.length)
    result = result_arr[r][0]
    @ids_hash[result]= 1
    puts result
  end

  def fullHash
    @ids_array.each do |id|
      @ids_hash[id] = 0
    end
    @ids_hash
  end
end


n = [11, 22, 33, 44, 55, 66, 77, 88, 99]
b = Banners.new(n)
for i in 0..20
  b.random
end


