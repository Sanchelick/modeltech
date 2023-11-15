class ProductController < ApplicationController
    def index
        @p = Product.new
        @p.name = "Some product"
    end
end
