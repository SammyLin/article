class Admin::PagesController < ApplicationController
  layout 'admin'
  before_filter 'require_is_admin'
  def index
    @pages = Page.all
    respond_to do |format|
      format.html
      format.json { render :json => @pages}
    end
  end
  def new
    @page = Page.new
    respond_to do |format|
      format.html
      format.json { render :json => @page }
    end
  end
  def create
    @page = Page.new(params[:page])
    @page.user_id = current_user.id
    respond_to do |format|
      if @page.save
        format.html { redirect_to page_path(@page.slug), :notice => 'Page was successfully created.' }
        format.json { render :json => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.json { render :json => @page.errors, :status => :unprocessable_entity }

      end
    end
  end
  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
    respond_to do |format|
      if @page.update_attributes(params[:page])
      format.html { redirect_to page_path(@page.slug) , :notice => 'Page was successfully updated'}
      format.json { head :ok}
      else
        format.html { render :action => 'edit'}
        format.json { render :json => @page.errors, :status => :unprocessable_entity }
      end
    end

  end
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    respond_to do |format|
      format.html { redirect_to admin_pages_path }
      format.json { head :ok }
    end
  end
end
