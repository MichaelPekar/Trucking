class Admin::GalleryItemsController < Admin::AdminController
  # GET /admin/gallery_items
  # GET /admin/gallery_items.json
  def index
    @admin_gallery_items = Admin::GalleryItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_gallery_items }
    end
  end

  # GET /admin/gallery_items/new
  # GET /admin/gallery_items/new.json
  def new
    @admin_gallery_item = Admin::GalleryItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_gallery_item }
    end
  end

  # GET /admin/gallery_items/1/edit
  def edit
    @admin_gallery_item = Admin::GalleryItem.find(params[:id])
  end

  # POST /admin/gallery_items
  # POST /admin/gallery_items.json
  def create
    @admin_gallery_item = Admin::GalleryItem.new(params[:admin_gallery_item])

    respond_to do |format|
      if @admin_gallery_item.save
        format.html { redirect_to admin_gallery_items_path, notice: 'Gallery item was successfully created.' }
        format.json { render json: @admin_gallery_item, status: :created, location: @admin_gallery_item }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_gallery_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/gallery_items/1
  # PUT /admin/gallery_items/1.json
  def update
    @admin_gallery_item = Admin::GalleryItem.find(params[:id])

    respond_to do |format|
      if @admin_gallery_item.update_attributes(params[:admin_gallery_item])
        format.html { redirect_to admin_gallery_items_path, notice: 'Gallery item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_gallery_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/gallery_items/1
  # DELETE /admin/gallery_items/1.json
  def destroy
    @admin_gallery_item = Admin::GalleryItem.find(params[:id])
    @admin_gallery_item.destroy

    respond_to do |format|
      format.html { redirect_to admin_gallery_items_url }
      format.json { head :no_content }
    end
  end
end
