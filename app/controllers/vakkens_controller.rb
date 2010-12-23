class VakkensController < ApplicationController
  # GET /vakkens
  # GET /vakkens.xml
  def index
    @vakkens = Vakken.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vakkens }
    end
  end

  # GET /vakkens/1
  # GET /vakkens/1.xml
  def show
    @vakken = Vakken.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vakken }
    end
  end

  # GET /vakkens/new
  # GET /vakkens/new.xml
  def new
    @vakken = Vakken.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vakken }
    end
  end

  # GET /vakkens/1/edit
  def edit
    @vakken = Vakken.find(params[:id])
  end

  # POST /vakkens
  # POST /vakkens.xml
  def create
    @vakken = Vakken.new(params[:vakken])

    respond_to do |format|
      if @vakken.save
        format.html { redirect_to(@vakken, :notice => 'Vakken was successfully created.') }
        format.xml  { render :xml => @vakken, :status => :created, :location => @vakken }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vakken.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vakkens/1
  # PUT /vakkens/1.xml
  def update
    @vakken = Vakken.find(params[:id])

    respond_to do |format|
      if @vakken.update_attributes(params[:vakken])
        format.html { redirect_to(@vakken, :notice => 'Vakken was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vakken.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vakkens/1
  # DELETE /vakkens/1.xml
  def destroy
    @vakken = Vakken.find(params[:id])
    @vakken.destroy

    respond_to do |format|
      format.html { redirect_to(vakkens_url) }
      format.xml  { head :ok }
    end
  end
end
