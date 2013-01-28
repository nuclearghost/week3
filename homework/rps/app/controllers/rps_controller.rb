class RpsController < ActionController::Base

	def getChoices 
		return @choices = ["Rock", "Paper", "Scissors"]
	end

	def index
		@player = "none"
		if(params[:choice])
			@player = params[:choice]
			@computer = getChoices.sample

			@result = "unknown"

			if (@player == @computer)
				@result = "Draw"
			else
				if (@player == "Rock")
					if (@computer == "Scissors")
						@result = "Win"
					else
						@result = "Lose"
					end
				end
				if (@player == "Scissors")
					if (@computer == "Paper")
						@result = "Win"
					else
						@result = "Lose"
					end
				end
				if (@player == "Paper")
					if (@computer == "Rock")
						@result = "Win"
					else
						@result = "Lose"
					end
				end
			end
		end

		render
	end

end