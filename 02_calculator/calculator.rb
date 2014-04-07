def add(num1,num2)
  result = num1+num2
end

def subtract(num1,num2)
  result = num1 - num2
end

def sum(numbers)
  result = 0
  result = numbers.inject(0) { |result, element| result + element }
end