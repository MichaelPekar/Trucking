class Admin::CollaboratorsController < Admin::AdminController
  # GET /admin/collaborators
  # GET /admin/collaborators.json
  def index
    @admin_collaborators = Admin::Collaborator.all
    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @admin_collaborators }
    end
  end

  # GET /admin/collaborators/1
  # GET /admin/collaborators/1.json
  def show
    @admin_collaborator = Admin::Collaborator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_collaborator }
    end
  end

  # GET /admin/collaborators/new
  # GET /admin/collaborators/new.json
  def new
    @admin_collaborator = Admin::Collaborator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_collaborator }
    end
  end

  # GET /admin/collaborators/1/edit
  def edit
    @admin_collaborator = Admin::Collaborator.find(params[:id])
  end

  # POST /admin/collaborators
  # POST /admin/collaborators.json
  def create
    @admin_collaborator = Admin::Collaborator.new(params[:admin_collaborator])

    respond_to do |format|
      if @admin_collaborator.save
        format.html { redirect_to @admin_collaborator, notice: 'Collaborator was successfully created.' }
        format.json { render json: @admin_collaborator, status: :created, location: @admin_collaborator }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_collaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/collaborators/1
  # PUT /admin/collaborators/1.json
  def update
    @admin_collaborator = Admin::Collaborator.find(params[:id])

    respond_to do |format|
      if @admin_collaborator.update_attributes(params[:admin_collaborator])
        format.html { redirect_to @admin_collaborator, notice: 'Collaborator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_collaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/collaborators/1
  # DELETE /admin/collaborators/1.json
  def destroy
    @admin_collaborator = Admin::Collaborator.find(params[:id])
    @admin_collaborator.destroy

    respond_to do |format|
      format.html { redirect_to admin_collaborators_url }
      format.json { head :no_content }
    end
  end
end
