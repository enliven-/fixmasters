class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :set_fix, only: [:show, :create, :edit, :update, :destroy, :index]

  # GET  assignments
  # GET  assignments.json
  def index
    @assignments = @fix.assignments
  end

  # GET  assignments/1
  # GET  assignments/1.json
  def show
  end

  # GET  assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET  assignments/1/edit
  def edit
  end

  # POST  assignments
  # POST  assignments.json
  def create
    @assignment = Assignment.new(assignment_params)
    @assignment.fix = @fix
    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assignment was successfully created.' }
        format.json { render :show, status: :created, location: @assignment }
      else
        format.html { render :new }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT  assignments/1
  # PATCH/PUT  assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE  assignments/1
  # DELETE  assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_fix
      @fix = Fix.find(params[:fix_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      # params.require(:assignment).permit!
      params.fetch(:assignment, {}).permit!
    end
end
