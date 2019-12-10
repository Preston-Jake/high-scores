class HighScores
	def initialize (scores)
		@scores = scores
	end
	def scores
		@scores
	end
	def latest
		@scores.last
	end
	def personal_best
		@scores.reduce {|largest, num| if num > largest then num else largest end}
	end
	def personal_top_three
		sorted_scores = @scores.sort { |a, b| b <=> a }
		sorted_scores[0, 3]
	end
	def latest_is_personal_best?
			if latest == personal_best
				true
			else
				false
			end
	end
end