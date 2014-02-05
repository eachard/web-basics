def stupid_coaching

	puts "what's up kid"
	@coach_answer = gets.chomp

	until @coach_answer == "Leave me alone"

		if @coach_answer.end_with?("?")
			puts "Silly question"
		else
			puts "I don't care son!"
		end
		
		@coach_answer = gets.chomp
	
	end
end
