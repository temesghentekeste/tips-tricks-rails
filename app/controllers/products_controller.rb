class ProductsController < ApplicationController
  before_action :set_brand, except: :index
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @brand = Brand.includes(:products).find(params[:brand_id])
    @products = @brand.products 

  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = @brand.products.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = @brand.products.new(product_params)

    respond_to do |format|
      if @product.save
        # format.html { redirect_to brand_product_path(@brand, @product), notice: 'Product was successfully created.' }
        format.html { redirect_to [@brand, @product], notice: 'Product was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        # format.html { redirect_to brand_product_path(@brand, @product), notice: 'Product was successfully updated.' }
        format.html { redirect_to [@brand, @product], notice: 'Product was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      # format.html { redirect_to brand_products_path(@brand), notice: 'Product was successfully destroyed.' }
      format.html { redirect_to [@brand, :products] , notice: 'Product was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:brand_id])
    end

    def set_product
      @product = @brand.products.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:brand_id, :name, :price)
    end
end
