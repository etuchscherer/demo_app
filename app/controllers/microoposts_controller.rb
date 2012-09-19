class MicroopostsController < ApplicationController
  # GET /microoposts
  # GET /microoposts.json
  def index
    @microoposts = Microopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @microoposts }
    end
  end

  # GET /microoposts/1
  # GET /microoposts/1.json
  def show
    @microopost = Microopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @microopost }
    end
  end

  # GET /microoposts/new
  # GET /microoposts/new.json
  def new
    @microopost = Microopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @microopost }
    end
  end

  # GET /microoposts/1/edit
  def edit
    @microopost = Microopost.find(params[:id])
  end

  # POST /microoposts
  # POST /microoposts.json
  def create
    @microopost = Microopost.new(params[:microopost])

    respond_to do |format|
      if @microopost.save
        format.html { redirect_to @microopost, :notice => 'Microopost was successfully created.' }
        format.json { render :json => @microopost, :status => :created, :location => @microopost }
      else
        format.html { render :action => "new" }
        format.json { render :json => @microopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microoposts/1
  # PUT /microoposts/1.json
  def update
    @microopost = Microopost.find(params[:id])

    respond_to do |format|
      if @microopost.update_attributes(params[:microopost])
        format.html { redirect_to @microopost, :notice => 'Microopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @microopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microoposts/1
  # DELETE /microoposts/1.json
  def destroy
    @microopost = Microopost.find(params[:id])
    @microopost.destroy

    respond_to do |format|
      format.html { redirect_to microoposts_url }
      format.json { head :no_content }
    end
  end
end
