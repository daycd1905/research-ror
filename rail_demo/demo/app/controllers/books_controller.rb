class BooksController < ApplicationController
	def index
		@books = Book.all		
	end

	def show
		@book = Book.find(params[:id])		
	end

	def new
		@book = Book.new
		@subjects = Subject.all	
	end

	def book_params
		params.require(:books).permit(:titile, :price, :subject_id, :desciption)
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to :action => 'index'
		else 
			@subjects = Subject.all
			render :action => 'new'
		end		
	end

	def book_param
		param.require(:book).permit(:titile, :price, :subject_id, :desciption)		
	end

	def update
		@book = Book.find(params[:id])
		if @book.update_attributes(book_param)	
			redirect_to :action => 'show', :id => @book
		else
			@subjects = Subject.all
			render :action => 'edit'
		end	
	end

	def delete
		Book.find(params[:id]).destroy
		redirect_to :action => 'index'	
	end

	def show_subject
			@subject = Subject.find(params[:id])
	end	
end
