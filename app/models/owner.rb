class Owner

	def name
		name = 'Rose Weixel'
	end

	def birthdate
		birthdate = Date.new(1981, 7, 14)
	end

	def countdown
		today = Date.today
		birthday = Date.new(today.year, birthdate.month, birthdate.day)
		if birthday > today
			countdown = (birthday - today).to_i
		else
			countdown = (birthday.next_year - today).to_i
		end
	end

end