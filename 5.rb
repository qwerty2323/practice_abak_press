# Для этого задания вам необходимо будет скачать файл по ссылке http://goo.gl/uaZfG1
#
# Итак, это файл Ip_to_country в формате text/csv. Необходимо написать простую утилиту,
# на входе которой будет некий IP адрес, а на выходе код страны, к которой этот IP
# принадлежит. Программа должна использовать данный файл в качестве базы данных.
# Примечание: IP адреса зашифрованы в этом csv файле, будьте внимательны, подробности
# шифрования увидете в заголовке этого файла. Пример использования вашей утилиты может быть таким:
#  $ iptocountry.rb 85.12.221.146
#  RU


a = ARGV[0].split('.').map! { |i| i.to_i }
ip_int = a[3] + (a[2] * 256) + (a[1] * 256 * 256) + (a[0] * 256 * 256 *256)

lines = File.readlines('IpToCountry.csv')
lines.map! { |i| i.chomp }
lines.map! { |i| i.split(',') }
lines.each do |line|
  ip_from = line[0].split('"')[1].to_i
  ip_to = line[1].split('"')[1].to_i
  ip_country  = line[4].split('"')[1].to_s
  puts ip_country if ip_int >= ip_from && ip_int <= ip_to
end
