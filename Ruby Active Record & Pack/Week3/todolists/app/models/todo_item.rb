class TodoItem < ActiveRecord::Base
	def self.completed_todoitems
		TodoItem.where(completed: true).count
	end
end
