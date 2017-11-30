class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :update, :destroy]


  def category_item_map
    begin
      page_no = params[:page_no].present? ? params[:page_no] : 1
      render :json => {dataMap: ActiveModel::ArraySerializer.new(Category.paginate(:page => page_no, :per_page => 2), each_serializer: CategorySerializer), pageCount: page_no, code: 200}
    rescue Exception => e
      logger.error {"Error while fetching getting list of models. Params: #{params.inspect}, ErrorMessage: #{e.message}"}
      render :json => {code: 500}
    end
  end

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def category_params
    params.require(:category).permit(:name)
  end
end
