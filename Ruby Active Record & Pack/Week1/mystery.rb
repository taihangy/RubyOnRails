class Mystery
	def method_missing (method, *args)
		puts "Looking for..."
		puts "\"#{method} with params (#{args.join(',')}) ?"
		puts "Sorry... He is on vacation..."
		yield "Ended up in method_missing" if block_given?
	end
end

m = Mystery.new 
m.solve_mystery('abc', 123123) do |answer|
	puts "And the answer is: #{answer}"
end