class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new(category_params)

        if @category.save
            redirect_to categories_path
        else
            render :new
        end
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        @category.update(category: params[:category][:category], details: params[:category][:details])
        redirect_to categories_path
    end

    def delete
        @category = Category.find(params[:id])
        @category.destroy
        redirect_to categories_path
    end

    def show
        @category = Category.find(params[:id])
    end

    private
    def category_params
        params.require(:category).permit(:category, :details)
    end
end
