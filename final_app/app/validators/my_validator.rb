class MyValidator < ActiveModel::Validator
	def validate(record)
		if(record.name) == "Satan"
			record.errors[:name] << 'Forbidden name'
		end
	end
end