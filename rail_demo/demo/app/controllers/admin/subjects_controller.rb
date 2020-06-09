class Admin::SubjectsController < ApplicationController
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  	def index
		@subjects = Subject.all		
	end

	def show
		@subjects = Subject.find(params[:id])		
	end

	def new
		@book = Book.new
		@subjects = Subject.all	
	end

end
