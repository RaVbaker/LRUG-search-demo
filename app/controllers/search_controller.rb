class SearchController < ApplicationController
  def index
    @search = Product.search do
      fulltext params[:q]
      # for index time boosting use:
      # fulltext params[:q] do
      #   fields :name => 1.1, :description => 0.9
      # end                                       
      facet :category_name      
        # order_by :name, :desc
        # with :category_name, "Telefony > Smartfony"
        # with(:price).less_than 100
    end if params[:q]
  end

end
