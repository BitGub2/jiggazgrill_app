class Admin::CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to edit_admin_category_path(@category)
			flash[:success] = "New Category has been created!"
		else
			render 'new'
		end
	end

	def edit
		@category = Category.find(params[:id])
		if @category.products.blank?
		  	1.times {@category.products.build}
		  end
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			redirect_to admin_categories_path
			flash[:success] = "New Category has been updated!"
		else
			render 'edit'
		end
	end

	def destroy
	Category.find(params[:id]).destroy
	redirect_to admin_categories_path
	flash[:success] = "Category has been deleted!"
	end

	private
	
	def category_params
		params.require(:category).permit(:title, :listing_order, products_attributes: [:id, :name, :description, :price, :_destroy])
	end
			
end
