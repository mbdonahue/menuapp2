class MenusController < ApplicationController
  before_action :all_menus, only: [:index, :show, :edit, :create, :update, :destroy]
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index, :show]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    @items = Item.where(menu_id: @menu.id)
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
   def create
    @menu = Menu.create(menu_params)
    redirect_to root_path
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def all_menus
      @menus = Menu.all
    end

    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:meal)
    end
end
