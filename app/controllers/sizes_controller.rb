class SizeableableController < ApplicationController

before_action :set_sizeable, only: [:show, :edit, :update, :destroy]

# GET /sizeables
# GET /sizeables.json
def index
  @sizeables = Sizeable.all
  #@categories = Category.all
  #@sizeables = Sizeable.all
  #@prices = Price.all
end

# GET /sizeables/1
# GET /sizeables/1.json
def show
end

# GET /sizeables/new
def new
  @sizeable = Sizeable.new
  #@categories = Category.all
  #@sizeableables = Sizeable.all
  #@prices = Price.all
end

# GET /sizeableables/1/edit
def edit
end

# POST /sizeables
# POST /sizeables.json
def create
  @sizeable = Sizeable.new(sizeable_params)
  #@categories = Category.all

  respond_to do |format|
    if @sizeable.save
      format.html { redirect_to @sizeable, notice: 'Sizeable was successfully created.' }
      format.json { render :show, status: :created, location: @sizeable }
    else
      format.html { render :new }
      format.json { render json: @sizeable.errors, status: :unprocessable_entity }
    end
  end
end

# PATCH/PUT /sizeables/1
# PATCH/PUT /sizeables/1.json
def update
  @menus = Menu.all
  respond_to do |format|
    if @sizeable.update(sizeable_params)
      format.html { redirect_to @sizeable, notice: 'Sizeable was successfully updated.' }
      format.json { render :show, status: :ok, location: @sizeable }
    else
      format.html { render :edit }
      format.json { render json: @sizeable.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /sizeables/1
# DELETE /sizeables/1.json
def destroy
  @sizeable.destroy
  respond_to do |format|
    format.html { redirect_to sizeables_url, notice: 'Sizeable was successfully destroyed.' }
    format.json { head :no_content }
  end
end




private
  # Use callbacks to share common setup or constraints between actions.
  def set_sizeable
    @sizeable = Sizeable.find(params[:id])
  end

  def sizeable_params
    params.require(:sizeable).permit(:sizeable_name)
  end
end
