class ProjectsController < ApplicationController

	def index

		@projects = Project.order(created_at: "desc").limit(10)
		render 'index'
	end

	def show
		@theproject = Project.find(params[:id])
		unless @theproject
			render "not_founf"
		end	
			render "show"
	end
end
