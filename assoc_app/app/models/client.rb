class Client < ApplicationRecord
	validate :can_access?

	def can_access?
		if(:age.eql?(18)) && (:is_admin? == false)
			error.add(:can_access_18?, "denied")
		end
	end
end
