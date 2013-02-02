class DiceController < ActionController::Base

	def index
	end

	def roll
		@point = params[:point]

		@die1 = 1 + rand(6)
		@die2 = 1 + rand(6)

		@total = @die1 + @die2

		if @point == nil #first roll
			if @total == 7 or @total == 11
				@result = :win
			elsif @total == 2 or @total == 3 or @total == 12
				@result = :lose
			else
				@result = :again
				@point = @total
			end
		else
			if @total == 7
				@result = :lose
			elsif @total == @point.to_i
				@result = :win
			else
				@result = :again
			end
		end

	end
end