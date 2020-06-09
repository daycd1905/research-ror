class Api::V1::UsersController < ApplicationController

    # def index
    #     @users = User.all
    #     render json: @users
    # end

    # #GET /user/:id
    # def show
    #     @user = User.find(params[:id])
    #     render json: @user
    # end

    # #POST /users
    # def create 
    #     @user = User.new(user_params)
    #     if @user.save
    #         render json: @user
    #     else
    #         render error: {error: 'Unable to create!'}
    #     end
    # end

    # #PUT /users/:id
    # def update
    #     @user = User.find(params[:id])
    #     if @user
    #         @user.update(user_params)
    #         render json: {message: 'Successfully'}
    #     else
    #         render json: {error: 'Unable to update' }
    #     end
    # end  
    
    # def destroy
    #     @user = User.find(params[:id])
    #     if @user
    #        @user.destroy
    #        render json: {message: 'Delete successfully'}
    #     else
    #         render error: {error: 'Unable to delete'}    
        
    #     end
    # end

    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end

    def index
        @users = User.all
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render error: {error: '.....'}        
        end
    end

    def update
        @user = User.find(params[:id])
        if @user
            @user.update(user_params)
            render json: {message: 'Successfully'}
        else
            render error: {error: 'Unable to update'}
        end
    end

    def destroy
        @user = User.find(params[:id])
        if @user
            @user.destroy
            render json: {message: 'Successfully'}
        else
            render error: {error: 'Doe'}
        end
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end



end
