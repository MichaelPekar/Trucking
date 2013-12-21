class Admin::AboutUsPagesController < Admin::AdminController
  # GET /admin/about_us_pages
  # GET /admin/about_us_pages.json
  def index
    @admin_about_us_pages = Admin::AboutUsPage.all

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @admin_about_us_pages }
    end
  end

  # GET /admin/about_us_pages/1
  # GET /admin/about_us_pages/1.json
  def show
    @admin_about_us_page = Admin::AboutUsPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_about_us_page }
    end
  end

  # GET /admin/about_us_pages/new
  # GET /admin/about_us_pages/new.json
  def new
    @admin_about_us_page = Admin::AboutUsPage.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @admin_about_us_page }
    end
  end

  # GET /admin/about_us_pages/1/edit
  def edit
    @admin_about_us_page = Admin::AboutUsPage.find(params[:id])
  end

  # POST /admin/about_us_pages
  # POST /admin/about_us_pages.json
  def create
    @admin_about_us_page = Admin::AboutUsPage.new(params[:admin_about_us_page])

    respond_to do |format|
      if @admin_about_us_page.save
        format.html { redirect_to @admin_about_us_page, notice: 'About as page was successfully created.' }
        format.json { render json: @admin_about_us_page, status: :created, location: @admin_about_us_page }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_about_us_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/about_us_pages/1
  # PUT /admin/about_us_pages/1.json
  def update
    @admin_about_us_page = Admin::AboutUsPage.find(params[:id])

    respond_to do |format|
      if @admin_about_us_page.update_attributes(params[:admin_about_us_page])
        format.html { redirect_to @admin_about_us_page, notice: 'About as page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_about_us_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/about_us_pages/1
  # DELETE /admin/about_us_pages/1.json
  def destroy
    @admin_about_us_page = Admin::AboutUsPage.find(params[:id])
    @admin_about_us_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_about_us_pages_url }
      format.json { head :no_content }
    end
  end
end
