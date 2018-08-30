class LanguagesController < ApplicationController
	LIMIT = 50
	def index
		@items = Language.order(name: :asc).page(params[:page]).per(LIMIT)
	end
end
