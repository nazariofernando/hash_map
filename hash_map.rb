class HashMap

	#constructor with size (number of key, value pairs )as an argument
	def initialize(size)

		#instance variables
		@size = size * 2	#the real size of the array
		@array = Array.new(@size)    	#array that will keep the keys and values
		#each even index i will be a key
		#and the values will come just after the key (i+1)

	end

	def array
		puts @array
	end

	#method to set a key and value
	def set(key, value)

		#a variable to see if the values are in the array
		inside = false

		#iterate through the array
		i = 0
		while i < @size

			#if there is no key correspondent with the index
			if @array[i] == nil
				#the element will become the key
				@array[i] = key
				#and the next one will become the value
				@array[i+1] = value
				#set the inside variable to true
				inside = true
				#return the value of inside
				return inside
			#if there is already a key and the user wants to overwrite it
			elsif @array[i] == key
				#the new value is assigned
				@array[i+1] = value
				#set the inside variable to true
				inside = true
				#return the value of inside
				return inside
			end

			#else, we will iterate through all even in the array
			i += 2 

		end

		#if the operation fails, that means, everything is filled, or anything else, return inside as false
		return inside
		
	end

	#method to get a value correspondent with a key
	def get(key)

		#we will set the initial value of the variable as nil
		value = nil
		
		#iterate through the array
		i = 0
		while i < @size

			#if we find the key inside the array
			if @array[i] == key
				#we will grab the next element (the value)
				value = @array[i+1]
				#and return it
				return value
			end

			#go to all the even indexes
			i += 2
			
		end

		#if we don't find the key, return value as nil
		return value

	end

	#method to delete a value associated with a key
	def delete(key)
		
		#we will set the initial value of the variable as nil
		value = nil
		
		#iterate through the array
		i = 0
		while i < @size

			#if we find the key inside the array
			if @array[i] == key
				#we will save the value in the variable value
				value = @array[i+1]
				#set the element to nil, thus, deleting it
				@array[i+1] = nil
				#and return the original value
				return value
			end

			#go to all the even indexes
			i += 2
			
		end

		#if we don't find the key, return value as nil
		return value

	end

	#method to measure the real number of pairs per the give number of pairs
	def load

		#iterate through the array
		i = 0
		while i < @size

			#if there is two sequential nils - what would be impossible,
			#given the configuration of the array, but for its end
			if @array[i] == nil && @array[i+1] == nil
				#compute the value and return it.
				return (1.0 * i)/ @size
			end

			i += 1
			
		end

		#if it has iterate through the whole array, 
		#it means the number of elements is the same that the size of the array
		return 1.0

	end

end