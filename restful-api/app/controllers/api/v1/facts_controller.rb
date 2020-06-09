class Api::V1::FactsController < ApplicationController
    # before_action :find_fact, only: [:show, :update, :destroy]

    # def index
    #     @facts = Fact.where(user_id: params[:user_id])
    #     render json: @facts
    # end

    # def show
    #     render json: @fact
    # end

    # def create
    #     @fact = Fact.new(fact_params)
    #     if @fact.save
    #         render json: @fact
    #     else
    #         render error: {error: 'Unable to create fact'}
    #     end
    # end
    
    # def update
    #     if @fact
    #         @fact.update(fact_params)
    #         render json: @fact
    #     else
    #         render json: {error: 'Unable to update'}
    #     end
    # end

    # def destroy
    #     if @fact
    #         @fact.destroy
    #         render json: {message: 'Delete successfully'}
    #     else
    #         render json: {error: 'Unable to delete'}
    #     end
    # end

    # private 
    # def fact_params
    #     params.permit(:fact).permit(:fact, :likes, :user_id)
    # end

    # def find_fact 
    #     @fact = Fact.find(params[:id])
    # end


    before_action :find_fact, only: [:show, :update, :destroy]

    def index
        @facts = Fact.where(user_id: params[:user_id])
        render json: @facts
    end    

    def show
        render json: @fact
    end
    
    def create
        @fact = Fact.new(fact_params)
        if @fact.save
            render json: @fact
        else
            render error: {error: 'Doe'}
        end
    end

    def destroy
        if @fact
            @fact.destroy
            render json: {message: 'OK'}
        else
            render error: {error: 'ERROR'}        
        end
    end

    private
    def facts_params
        params.require(:fact).permit(:fact, :likes, :user_id)
    end

    def find_fact
        @fact = Fact.find(params[:id])
    end

end
