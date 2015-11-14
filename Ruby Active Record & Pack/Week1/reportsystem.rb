require_relative 'store'
class ReportingSystem
	def initialize
		@store = Store.new
		# @store.methods.grep(/^get_(.*)_desc/) {
		# 	ReportingSystem.define_report_methods_for $1
		# }
	end

	# def self.define_report_methods_for (item)
	# 	define_method("get_#{item}_desc") do
	# 		@store.send("get_#{item}_desc")
	# 	end
	# 	define_method("get_#{item}_price") {
	# 		@store.send("get_#{item}_price")
	# 	}
	# end

	def method_missing(name, *args)
		super unless @store.respond_to?(name)
		@store.send(name)
	end
end

rs = ReportingSystem.new
puts "#{rs.get_piano_desc} costs #{rs.get_piano_price}"