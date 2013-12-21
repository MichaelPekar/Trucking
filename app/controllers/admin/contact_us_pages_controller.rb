class Admin::ContactUsPagesController < Admin::AdminController
  load_and_authorize_resource
  # GET /admin/contact_us_pages
  # GET /admin/contact_us_pages.json
  def index
    @admin_contact_us_pages = Admin::ContactUsPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_contact_us_pages }
    end
  end

  # GET /admin/contact_us_pages/1
  # GET /admin/contact_us_pages/1.json
  def show
    @admin_contact_us_page = Admin::ContactUsPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_contact_us_page }
    end
  end

  # GET /admin/contact_us_pages/new
  # GET /admin/contact_us_pages/new.json
  def new
    @admin_contact_us_page = Admin::ContactUsPage.new

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @admin_contact_us_page }
    end
  end

  # GET /admin/contact_us_pages/1/edit
  def edit
    @admin_contact_us_page = Admin::ContactUsPage.find(params[:id])
  end

  # POST /admin/contact_us_pages
  # POST /admin/contact_us_pages.json
  def create
    @admin_contact_us_page = Admin::ContactUsPage.new(params[:admin_contact_us_page])

    respond_to do |format|
      if @admin_contact_us_page.save
        format.html { redirect_to @admin_contact_us_page, notice: 'Contact us page was successfully created.' }
        format.json { render json: @admin_contact_us_page, status: :created, location: @admin_contact_us_page }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_contact_us_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/contact_us_pages/1
  # PUT /admin/contact_us_pages/1.json
  def update
    @admin_contact_us_page = Admin::ContactUsPage.find(params[:id])

    respond_to do |format|
      if @admin_contact_us_page.update_attributes(params[:admin_contact_us_page])
        format.html { redirect_to @admin_contact_us_page, notice: 'Contact us page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_contact_us_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contact_us_pages/1
  # DELETE /admin/contact_us_pages/1.json
  def destroy
    @admin_contact_us_page = Admin::ContactUsPage.find(params[:id])
    @admin_contact_us_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_contact_us_pages_url }
      format.json { head :no_content }
    end
  end
end
