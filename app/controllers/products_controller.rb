class ProductsController < ApplicationController
  def show
    @categories = Category.all
    @product = Product.find(params[:id])
    @category = @product.category

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => product.to_xml}
    end
  end

end
