# Существует точка на карте с координатами x и y (например, x = 60.597223, y =  56.837992),
# эта точка находится в центре окружности, радиусом в r. Необходимо написать программу на ruby,
# на входе которой будет массив из N точек [[x0, y0], [x1, x2], …], а на выходе массив 
# содержащий точки, которые входят в данную область (окружность). 
# При решении разрешается смотреть в google для поиска формул.
# (x - x0)^2 + (y - y0)^2 <= R^2

class Around

  def initialize(x0, y0, r)
    @x0 = x0
    @y0 = y0
    @r  = r
  end

  def attachment(points)
    attPoints = []

    points.each do |p|
      attPoints.push([p[0], p[1]]) if attachment?(p[0], p[1])
    end
    attPoints
  end

  def attachment?(x, y)
    (x - @x0)**2 + (y - @y0)**2 <= @r**2
  end
end

x = 60.597223
y = 56.837992
r = 30
arrXY = [[10, 20], [30, 40], [50, 60], [70, 80], [90, 100], [66, 56]]

ar = Around.new(x, y, r)
p ar.attachment(arrXY)