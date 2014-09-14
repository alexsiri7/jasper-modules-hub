class PluginsController < ApplicationController
  load_and_authorize_resource

  # GET /plugins
  # GET /plugins.json
  def index
    @plugins = Plugin.all
  end

  # GET /plugins/1
  # GET /plugins/1.json
  def show
  end

  # GET /plugins/new
  def new
    @plugin = Plugin.new
  end

  # GET /plugins/1/edit
  def edit
  end

  # POST /plugins
  # POST /plugins.json
  def create
    @plugin = Plugin.new(plugin_params)
    @plugin.user = current_user

    respond_to do |format|
      if @plugin.save
        format.html { redirect_to @plugin, notice: 'Plugin was successfully created.' }
        format.json { render :show, status: :created, location: @plugin }
      else
        format.html { render :new }
        format.json { render json: @plugin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plugins/1
  # PATCH/PUT /plugins/1.json
  def update
    respond_to do |format|
      if @plugin.update(plugin_params)
        format.html { redirect_to @plugin, notice: 'Plugin was successfully updated.' }
        format.json { render :show, status: :ok, location: @plugin }
      else
        format.html { render :edit }
        format.json { render json: @plugin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plugins/1
  # DELETE /plugins/1.json
  def destroy
    @plugin.destroy
    respond_to do |format|
      format.html { redirect_to plugins_url, notice: 'Plugin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def plugin_params
      params.require(:plugin).permit(:name, :description, :url)
    end
end
