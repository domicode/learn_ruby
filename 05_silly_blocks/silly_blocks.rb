def reverser
  string = yield
  array = string.split(" ")
  array.map! do |variable|
    variable.reverse
  end
  array.join(' ').to_s
end


def adder(num = 1)
  yield + num
end

def repeater(num = 1)
    num.times do |i|
    i = yield
  end
end

