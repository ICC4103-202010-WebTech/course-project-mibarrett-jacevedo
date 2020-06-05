class EventOrganizationsController < ApplicationController
  before_action :set_event_organization, only: [:show, :edit, :update, :destroy]

  # GET /event_organizations
  # GET /event_organizations.json
  def index
    @event_organizations = EventOrganization.all
  end

  # GET /event_organizations/1
  # GET /event_organizations/1.json
  def show
  end

  # GET /event_organizations/new
  def new
    @event = Event.find(params[:event_id])
    @event_organization = EventOrganization.new
  end

  # GET /event_organizations/1/edit
  def edit
  end

  # POST /event_organizations
  # POST /event_organizations.json
  def create
    @event_organization = EventOrganization.new(event_organization_params)

    respond_to do |format|
      if @event_organization.save
        format.html { redirect_to @event_organization, notice: 'Event organization was successfully created.' }
        format.json { render :show, status: :created, location: @event_organization }
      else
        format.html { render :new }
        format.json { render json: @event_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_organizations/1
  # PATCH/PUT /event_organizations/1.json
  def update
    respond_to do |format|
      if @event_organization.update(event_organization_params)
        format.html { redirect_to @event_organization, notice: 'Event organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_organization }
      else
        format.html { render :edit }
        format.json { render json: @event_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_organizations/1
  # DELETE /event_organizations/1.json
  def destroy
    @event_organization.destroy
    respond_to do |format|
      format.html { redirect_to event_organizations_url, notice: 'Event organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_organization
      @event_organization = EventOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_organization_params
      params.fetch(:event_organization, {}).permit(:event_id, :organization_id)
    end
end
