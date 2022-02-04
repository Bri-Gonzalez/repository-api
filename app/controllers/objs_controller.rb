class ObjsController < ApplicationController
  before_action :set_obj, only: [:show, :update, :destroy]

  # GET /objs
  def index
    @objs = Obj.all

    render json: @objs
  end

  # GET /objs/1
  def show
    render json: @obj
  end

  # POST /objs
  def create
    @obj = Obj.new(obj_params)

    if @obj.save
      render json: @obj, status: :created
    else
      render json: @obj.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /objs/1
  def update
    if @obj.update(obj_params)
      render json: @obj
    else
      render json: @obj.errors, status: :unprocessable_entity
    end
  end

  # DELETE /objs/1
  def destroy
    @obj.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obj
      @obj = Obj.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obj_params
      params.require(:obj).permit(:size, :repository_id)
    end
end
