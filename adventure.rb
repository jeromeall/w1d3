# Adventure class
# - Start by taking a hash
# - using the hash, we will prompt the user accordingly

story_hash = {
	"question" => "Welcome to the haunted hotel. What room would you like to go to?",
	"room 1" => "you're dead", 
	"room 2" => {"question" => "You picked a good room. What would you like to do?",
				"sleep" => "You're rested for the morning",
				"stay up all night" => "You might have anxiety issues."}
}

class Adventure

	def initialize(story_hash)
		@story_hash = story_hash
	end

	def prompt(question, options)
		puts question
		puts "#{options}"
		res = gets.chomp
	end

	def prompt_n_chomp(question, options)
		res = prompt(question, options)

		until options.include?(res)
			puts "Your input is invalid"
			res = prompt(question, options)
		end
		res
	end

	def get_options(curr_story_hash)
		curr_story_hash.keys.select { |x| x != "question"}
	end

	def start()
		curr_story_hash = @story_hash
		question = curr_story_hash["question"]
		options = get_options(curr_story_hash)
	

		until options.nil?
			res = prompt_n_chomp(question, options)
			
			if curr_story_hash[res].is_a?(Hash)
				curr_story_hash = curr_story_hash[res]
				question = curr_story_hash["question"]
				options = get_options(curr_story_hash)
			else
				puts curr_story_hash[res]
				options = nil
			end
		
		

		end
		
		puts ""
	end

end

adv = Adventure.new(story_hash)
adv.start

	

