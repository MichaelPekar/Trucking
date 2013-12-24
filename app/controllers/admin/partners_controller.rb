class Admin::PartnersController < Admin::AdminController
  # GET /admin/partners
  # GET /admin/partners.json
  def index
    @partners = Admin::Partner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partners }
    end
  end

  # GET /admin/partners/1
  # GET /admin/partners/1.json
  def show
    @partner = Admin::Partner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner }
    end
  end

  # GET /admin/partners/new
  # GET /admin/partners/new.json
  def new
    @partner = Admin::Partner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner }
    end
  end

  # GET /admin/partners/1/edit
  def edit
    @partner = Admin::Partner.find(params[:id])
  end

  # POST /admin/partners
  # POST /admin/partners.json
  def create
    @partner = Admin::Partner.new(params[:admin_partner])

    respond_to do |format|
      if @partner.save
        format.html { redirect_to @partner, notice: 'Partner was successfully created.' }
        format.json { render json: @partner, status: :created, location: @partner }
      else
        format.html { render action: "new" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/partners/1
  # PUT /admin/partners/1.json
  def update
    @partner = Admin::Partner.find(params[:id])

    respond_to do |format|
      if @partner.update_attributes(params[:admin_partner])
        format.html { redirect_to @partner, notice: 'Partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/partners/1
  # DELETE /admin/partners/1.json
  def destroy
    @partner = Admin::Partner.find(params[:id])
    @partner.destroy

    respond_to do |format|
      format.html { redirect_to admin_partners_url }
      format.json { head :no_content }
    end
  end
end
