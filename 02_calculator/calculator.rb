def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  if (array.length !=0)
    array.each do |i|
      sum += i
    end
    sum * 1
  else
    sum
  end
end

def multiply(*args)
  args.reduce(:*)
end