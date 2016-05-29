class PageObjectsController < ApplicationController
  before_action :set_page_object, only: [:show, :edit, :update, :destroy]

  # GET /page_objects
  # GET /page_objects.json
  def index
    @page_objects = PageObject.all
  end

  # GET /page_objects/1
  # GET /page_objects/1.json
  def show
  end

  # GET /page_objects/new
  def new
    @page_object = PageObject.new
  end

  # GET /page_objects/1/edit
  def edit
  end

  # POST /page_objects
  # POST /page_objects.json
  def create
    @page_object = PageObject.new(page_object_params)

    respond_to do |format|
      if @page_object.save
        format.html { redirect_to @page_object, notice: 'Page object was successfully created.' }
        format.json { render :show, status: :created, location: @page_object }
      else
        format.html { render :new }
        format.json { render json: @page_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_objects/1
  # PATCH/PUT /page_objects/1.json
  def update
    respond_to do |format|
      if @page_object.update(page_object_params)
        format.html { redirect_to @page_object, notice: 'Page object was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_object }
      else
        format.html { render :edit }
        format.json { render json: @page_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_objects/1
  # DELETE /page_objects/1.json
  def destroy
    @page_object.destroy
    respond_to do |format|
      format.html { redirect_to page_objects_url, notice: 'Page object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_object
      @page_object = PageObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_object_params
      params.require(:page_object).permit(:name, :tagName)
    end
end
