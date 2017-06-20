def america(string)# Only in America function
	string << ' Only in America!'
end

def maxVal(array)
	nextNumber = 0#the number that will change to the next number in array IF its bigger than the previous number.
	array.each do |number|
		if number > nextNumber#Loop through array and if the current array number is bigger than nextNumber, change next Number
			nextNumber = number
		end
	end
	puts nextNumber
	
end

def arrayToHash(symbolArray, valueArray)
	finishHash = {}#the Hash that will contain the final combination of the two arrays.
	symbolArray.length.times do |i| #loop through the array and get the index to match the length of array.
		finishHash[symbolArray[i]] = valueArray[i]#set the Hash to the index of each array
	end
	finishHash
end

def print
	for x in 1..100 #count 1 through 100
		if x % 5 == 0 and x % 3 == 0 #if remainder of 5 and 3 = 0 (is a multipule of 5 or 3) put fizz and so on
			#this must be at the top because it contains both multipules of 5 and 3, this way we can change 3 and 5 seperatley later.
			puts 'Fizz'
		elsif x % 3 == 0 
			puts 'Buzz'
		elsif x % 5 == 0
			puts 'FizzBuzz'
		else 
			puts x
		end
	end
end

puts america 'fry sauce'
maxVal [3,7,2,12,9,4]
puts arrayToHash [:terentino, :peterJackson, :michaelBay], ['Kill Bill', 'Lord of the Rings', 'Transformers']
print
