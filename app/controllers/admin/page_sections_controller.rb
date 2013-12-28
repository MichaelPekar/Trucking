class Admin::PageSectionsController < Admin::AdminController
  # GET /admin/page_sections
  # GET /admin/page_sections.json
  def index
    @page_sections = Admin::PageSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @page_sections }
    end
  end

  # GET /admin/page_sections/1
  # GET /admin/page_sections/1.json
  def show
    @page_section = Admin::PageSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @page_section }
    end
  end

  # GET /admin/page_sections/new
  # GET /admin/page_sections/new.json
  def new
    @page_section = Admin::PageSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @page_section }
    end
  end

  # GET /admin/page_sections/1/edit
  def edit
    @page_section = Admin::PageSection.find(params[:id])
  end

  # POST /admin/page_sections
  # POST /admin/page_sections.json
  def create
    @page_section = Admin::PageSection.new(params[:admin_page_section])

    respond_to do |format|
      if @page_section.save
        format.html { redirect_to @page_section, notice: 'Page section was successfully created.' }
        format.json { render json: @page_section, status: :created, location: @page_section }
      else
        format.html { render action: "new" }
        format.json { render json: @page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/page_sections/1
  # PUT /admin/page_sections/1.json
  def update
    @page_section = Admin::PageSection.find(params[:id])

    respond_to do |format|
      if @page_section.update_attributes(params[:admin_page_section])
        format.html { redirect_to @page_section, notice: 'Page section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @page_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/page_sections/1
  # DELETE /admin/page_sections/1.json
  def destroy
    @page_section = Admin::PageSection.find(params[:id])
    @page_section.destroy

    respond_to do |format|
      format.html { redirect_to admin_page_sections_url }
      format.json { head :no_content }
    end
  end
end
