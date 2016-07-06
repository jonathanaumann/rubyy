class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
			render 'index'
	end

	def new
		render "new"
	end

	def create
    contact =  Contact.new(
    	:name => params[:contact][:description],
    	:address => params[:contact][:loc],
    	:email => params[:contact][:name],
    	:number => params[:contact][:number])

	end 




end
