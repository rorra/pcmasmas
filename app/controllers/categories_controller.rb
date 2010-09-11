class CategoriesController < ApplicationController
  before_filter :get_categories

  def index
    @products = Product.paginate(:all, :page => params[:page], :per_page => 8, :conditions => ["category_id in (?)", @categories.collect {|c| c.id}])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products.paginate(:page => params[:page], :per_page => 8, :conditions => ["category_id in (?)", @categories.collect {|c| c.id}])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @category.to_xml(:include => :products)}
      format.json { render :json => @category.to_json(:include => :products)}
    end
  end

  private

  def get_categories
    @categories = Category.all
  end
end
