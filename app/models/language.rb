class Language < ApplicationRecord
	TYPES = {ancient:1, constructed:2, extinct:3, historical:4, living:5, special:6}

	extend Enumerize
	enumerize :language_type, in: TYPES, scope: true
end
