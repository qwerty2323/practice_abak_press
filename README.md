1. Инструкция: для выполнения данных заданий необходимо иметь установленный интерпретатор ruby, желательно иметь книжку Мацумото Язык программирования Ruby, интернет с гуглом и немного времени. Задания не сложные, не синтетические, вполне могут встретиться вам подобные задачи в реальной работе.

2. Даны два списка (массива) из различных (возможно повторяющихся) целых чисел, а также могут быть и “дырки” - nil’ы, при этом каждый из массивов может в качестве элементов содержать подмассивы также из целых чисел. Пример: массив a = [[4, 19], nil, [32, 41], 65], b = [234, 0, 21, [54]]. Необходимо написать программу на ruby, на выходе которой будет хеш, ключами которого будут числа из обоих массивов a и b, а соотв. значениями - сумма, сколько раз встречается число как в первом, так и во втором массиве.

3. Существует точка на карте с координатами x и y (например, x = 60.597223, y =  56.837992), эта точка находится в центре окружности, радиусом в r. Необходимо написать программу на ruby, на входе которой будет массив из N точек [[x0, y0], [x1, x2], …], а на выходе массив содержащий точки, которые входят в данную область (окружность). При решении разрешается смотреть в google для поиска формул.

4. Существует множество из N целых чисел (массив из N уникальных целых чисел). Необходимо написать метод (программу), при N вызовах которого каждый раз будет выдаваться случайное, неповторяющееся число из этого массива. Чтобы было удобнее, представьте, что эти числа - баннеры клиентов, которые необходимо выводить в случайном порядке, но при этом нельзя повторяться, чтобы не обидеть никого из этих клиентов.

5. Напишите программу, на входе которой некторое целое число, а на выходе его представление как на LCD дисплее калькулятора, например:
    $ digtolcd.rb 654
      _   _
     |_  |_  |_|
     |_|  _|   |

6. Для этого задания вам необходимо будет скачать файл по ссылке http://goo.gl/uaZfG1
  Итак, это файл Ip_to_country в формате text/csv. Необходимо написать простую утилиту, на входе которой будет некий IP адрес, а на выходе код страны, к которой этот IP принадлежит. Программа должна использовать данный файл в качестве базы данных. Примечание: IP адреса зашифрованы в этом csv файле, будьте внимательны, подробности шифрования увидете в заголовке этого файла. Пример использования вашей утилиты может быть таким:
   $ iptocountry.rb 85.12.221.146
     RU
