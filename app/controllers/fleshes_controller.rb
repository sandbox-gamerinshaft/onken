class FleshesController < ApplicationController
  # GET /fleshes
  # GET /fleshes.json
  def index
    @fleshes = Flesh.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fleshes }
    end
  end

  # GET /fleshes/1
  # GET /fleshes/1.json
  def show
    @flesh = Flesh.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flesh }
    end
  end

  # GET /fleshes/new
  # GET /fleshes/new.json
  def new
    @flesh = Flesh.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flesh }
    end
  end

  # GET /fleshes/1/edit
  def edit
    @flesh = Flesh.find(params[:id])
  end

  # POST /fleshes
  # POST /fleshes.json
  def create
    @flesh = Flesh.new(params[:flesh])

    respond_to do |format|
      if @flesh.save
        format.html { redirect_to @flesh, notice: 'Flesh was successfully created.' }
        format.json { render json: @flesh, status: :created, location: @flesh }
      else
        format.html { render action: "new" }
        format.json { render json: @flesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fleshes/1
  # PUT /fleshes/1.json
  def update
    @flesh = Flesh.find(params[:id])

    respond_to do |format|
      if @flesh.update_attributes(params[:flesh])
        format.html { redirect_to @flesh, notice: 'Flesh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleshes/1
  # DELETE /fleshes/1.json
  def destroy
    @flesh = Flesh.find(params[:id])
    @flesh.destroy

    respond_to do |format|
      format.html { redirect_to fleshes_url }
      format.json { head :no_content }
    end
  end
end
