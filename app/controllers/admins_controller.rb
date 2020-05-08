class AdminsController < ApplicationController
  before_action :set_admin , only:[:show,:edit,:update,:destroy]
  def index
    @admins=Admin.all.order('firstname ASC')
  end

  def show
  end

  def new
    @admin=Admin.new
  end

  def edit
  end

  # DELETE /admin/1
  # DELETE /admin/1.json
  def destroy
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to @admin, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /admin
  # POST /admin.json
  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

   # PATCH/PUT /admin/1
  # PATCH/PUT /admin/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

 
  private
  def set_admin
    @admin=Admin.find(params[:id])
  end
  def admin_params
    params.require(:admin).permit(:firstname,:lastname,:password,:age,:person_dob)
  end
end
