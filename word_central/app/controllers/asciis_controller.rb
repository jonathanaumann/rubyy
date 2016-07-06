class AsciisController < ApplicationController


	def new 

		render "new"
	end

	def create
 	@text = params[:text_inspection][:user_text]

 	@artii = Artii::Base.new({})


 	render plain: @artii.asciify(@text)


	end
end
