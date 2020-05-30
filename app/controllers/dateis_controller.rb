class DateisController < ApplicationController
  before_action :set_datei, only: [:show, :edit, :update, :destroy]

  # GET /dateis
  # GET /dateis.json
  def index
    @dateis = Datei.all
  end

  # GET /dateis/1
  # GET /dateis/1.json
  def show
  end

  # GET /dateis/new
  def new
    @datei = Datei.new
  end

  # GET /dateis/1/edit
  def edit
  end

  # POST /dateis
  # POST /dateis.json
  def create
    @datei = Datei.new(datei_params)

    respond_to do |format|
      if @datei.save
        format.html { redirect_to @datei, notice: 'Datei was successfully created.' }
        format.json { render :show, status: :created, location: @datei }
      else
        format.html { render :new }
        format.json { render json: @datei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dateis/1
  # PATCH/PUT /dateis/1.json
  def update
    respond_to do |format|
      if @datei.update(datei_params)
        format.html { redirect_to @datei, notice: 'Datei was successfully updated.' }
        format.json { render :show, status: :ok, location: @datei }
      else
        format.html { render :edit }
        format.json { render json: @datei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dateis/1
  # DELETE /dateis/1.json
  def destroy
    @datei.destroy
    respond_to do |format|
      format.html { redirect_to dateis_url, notice: 'Datei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datei
      @datei = Datei.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datei_params
      params.require(:datei).permit(:Name, :Titel, document: [])

    end
end
