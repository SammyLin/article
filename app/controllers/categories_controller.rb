class CategoriesController < ApplicationController
  def show
    #@category = Category.all( :conditions => [ "name = ?" , params[:slug]]).first
    #@article = @category.article
    @articles= Article.all(:joins => :categories, :conditions => { :categories => { :slug => params[:slug]}})
    if @articles.count == 0
      redirect_to categories_path
    else

    respond_to do |format|
       format.html # show.html.erb
      format.json { render :json => @article }
    end
    end

  end
  def index
    @categories = Category.all
    respond_to do |format|
      format.html
      format.json {render :json => @categories}
    end
  end
end
