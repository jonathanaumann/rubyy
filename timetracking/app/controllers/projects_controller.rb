class ProjectsController < ApplicationController

	def index

		@projects = Project.order(created_at: "desc").limit(10)
		render 'index'
	end

	def show
		@theproject = Project.find(params[:id])
		render "show"
	end

	def new

	 @theproject = Project.new
	 render "new"
	end

	def create 
		@theproject = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])
		@theproject.save

	redirect_to "/projects"
	end
end
