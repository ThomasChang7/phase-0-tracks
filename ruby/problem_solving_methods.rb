# Release 0: Implement a Simple Search

def search_array(arr, number)
	i = 0
  while i < arr.length
		if arr[i] == number
    	return i
    end
	i += 1
  end
end

# Release 1: Calculate Fibonacci Numbers

# Solution 0
def fibonacci(num)
	fib = [0,1]
  (num - 2).times do
  	fib << fib[-2] + fib[-1]
  end
  fib[-1]
end

# Solution 1
def fib(num)
arr = [0,1]
i = 0
  while i < num - 2
    arr << arr[-1] + arr[-2]
    i += 1
  end
arr.last
end

# Driver Code:
puts "Expect fibonacci(6) to be equal 5 evaluates to true:"
p fibonacci(6) == 5

if fib(100) == 218922995834555169026
	puts "The 100th number in Fibonacci sequence is 218922995834555169026"
end

# Release 2: Sort an Array

# Pseudo Code - Bubble Sort
# Loop through a block until it's sorted;
# Create a boolean, set it to false.
#  - Another loop (arr.length -1).times;
# 	- If the the item of arr[i] is greater than arr[i+1]:
# 		- Switch it;
# 		- set the boolean to true.
# 	- If it is false, break the loop.
# 	- Arr.

# This is how to swap two variables at once
# b,a = a,b


def bubbly(arr)
  loop do
    switch = false
    (arr.length - 1).times do |i|
    	if arr[i] > arr[i + 1]
        arr[i + 1],arr[i] = arr[i],arr[i + 1]
        switch = true
      end
    end
    if switch == false
      break
    end
  end
  arr
end

p bubbly([24,65,87,14,45])
#=> [14, 24, 45, 65, 87]
