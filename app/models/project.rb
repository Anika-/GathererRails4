class Project

	attr_accessor :tasks
	
	def initialize 
		@tasks = []	
	end

	# For the newcomers to ruby, I need to explain this code snippet.
	# Reject is the opposite of "select". 
	# It will get the task list and create a new Array with the tasks that are not completed
	# if the list is empty it means that the project is done.
	def done? 
		tasks.reject(&:complete?).empty?
	end

end