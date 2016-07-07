class TextInspectionsController < ApplicationController

	def new
	render 'new'
	end

	def create
    @text = params[:text_inspection][:user_text]
    @words = @text.split(" ")
     @word_count = @text.split(" ").length
     @time = (@word_count.to_f/275)
     @timeinsec = @time*60.round(4)
     @h = Hash.new(0)

     @words.each do |w|
     @h[w]  +=1 
	 end
	 @h = @h.sort_by {|x,y| y}

	 @h = @h.last(10).reverse!






ce

     # 	if h.has_key?(w)
     #  	h[w] = h[w] + 1
	    # else
	    #   h[w] = 1
	    # end
	


     # render plain: "#{@text} has #{@word_count} words"

     render "results"
  	end
end
