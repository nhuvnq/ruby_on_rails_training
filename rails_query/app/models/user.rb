class User < ApplicationRecord
	enum state: [:active, :deactive]
end
