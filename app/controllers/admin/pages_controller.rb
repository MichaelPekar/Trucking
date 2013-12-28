class Admin::PagesController < Admin::AdminController
  # GET /admin/pages/1
  # GET /admin/pages/1.json
  def show
    @admin_page = Admin::Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_page }
    end
  end

  # GET /admin/pages/new
  # GET /admin/pages/new.json
  def new
    @section = Admin::PageSection.find(params[:section_id])
    @admin_page = Admin::Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_page }
    end
  end

  # GET /admin/pages/1/edit
  def edit
    @admin_page = Admin::Page.find(params[:id])
    @section = @admin_page.section
  end

  # POST /admin/pages
  # POST /admin/pages.json
  def create
    @section = Admin::PageSection.find(params[:admin_page][:section_id])
    @admin_page = Admin::Page.new(params[:admin_page])

    respond_to do |format|
      if @admin_page.save
        format.html { redirect_to admin_page_sections_path, notice: 'Page was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /admin/pages/1
  # PUT /admin/pages/1.json
  def update
    @admin_page = Admin::Page.find(params[:id])

    respond_to do |format|
      if @admin_page.update_attributes(params[:admin_page])
        format.html { redirect_to @admin_page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/pages/1
  # DELETE /admin/pages/1.json
  def destroy
    @admin_page = Admin::Page.find(params[:id])
    @admin_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_page_sections_url }
      format.json { head :no_content }
    end
  end
end
