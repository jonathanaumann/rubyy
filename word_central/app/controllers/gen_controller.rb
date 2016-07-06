require 'literate_randomizer'


class GenController < ApplicationController


	def new

		render "new"
	end

	def create 
		@num = params[:text_inspection][:user_num]
		@type = params[:type]

		if @type == "paragraphs"
		@para= LiterateRandomizer.paragraph :sentances => @num.to_i
		else 
		@para= LiterateRandomizer.sentence :words => @num.to_i
		end
render "results"
	end


end
