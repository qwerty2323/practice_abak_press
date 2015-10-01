# Напишите программу, на входе которой некторое целое число, а на выходе
# его представление как на LCD дисплее калькулятора, например:
#  $ digtolcd.rb 654
#  _   _
# |_  |_  |_|
# |_|  _|   |


digital = {
  '0' => [' _ ', '| |', '|_|'],
  '1' => [' ',   '|',   '|'  ],
  '2' => [' _ ', ' _|', '|_ '],
  '3' => [' _ ', ' _|', ' _|'],
  '4' => ['   ', '|_|', '  |'],
  '5' => [' _ ', '|_ ', ' _|'],
  '6' => [' _ ', '|_ ', '|_|'],
  '7' => [' _ ', '  |', '  |'],
  '8' => [' _ ', '|_|', '|_|'],
  '9' => [' _ ', '|_|', ' _|']
}

digital_show = ['', '', '']

ARGV.each do |ar|
  ar.split('').each do |a|
    for i in 0..2
      digital_show[i] += digital[a][i]
    end
  end
end

for i in 0..2
  puts digital_show[i]
end