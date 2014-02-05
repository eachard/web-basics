get '/' do
  @coach_message = params[:coach_message] || "what do you want man ?"
  @age_message = params[:age_message] || "what is your age man ?"

  # Look in app/views/index.erb
  
  puts "self : #{self}"
  puts "self class: #{self.class}"
  puts "self instance variables from GET '/' route handler: #{self.instance_variables}"
  erb :index
end

post '/coach' do
  @coach_question = params[:what] 
  
  @coach_answer = @coach_question.end_with?("?") ? "Silly question" : "I don't care son"

  # puts "self instance variable from POST '/coach' route handler: #{self.instance_variables}"
  
  erb :coach
end


# def stupid_coaching

# 	puts "what's up kid"
# 	@coach_answer = gets.chomp

# 	until @coach_answer == "Leave me alone"

# 		if @coach_answer.end_with?("?")
# 			puts "Silly question"
# 		else
# 			puts "I don't care son!"
# 		end
		
# 		@coach_answer = gets.chomp
	
# 	end
# end
