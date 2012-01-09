class PagesController < ApplicationController
  def show
   # @page = Page.find(:joins => :pages , :conditions => { :pages => {:slug => params[:slug]}})
    @page = Page.where(["slug = ?",params[:slug]]).first

    respond_to do |format|
      format.html
      format.json { render :json => @page }
    end

  end
end
