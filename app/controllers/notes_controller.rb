class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /notes
  def index
    # need to add filter here to only return all the 
    # notes that belong to a particlar lead
  
    
    @notes = Note.where(["lead_id = #{request.original_url.split("/")[4]}"]).reverse

    render json: @notes
  end


  # GET /notes/1
  def show
    
    if @note.lead_id == request.original_url.split("/")[4].to_i
      render json: @note
    else
      @note = {}
      render json: @note
    end
  end

  # POST /notes
  def create
    @note = Note.new(note_params)

    if @note.save
      render json: @note, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def note_params
      params.require(:note).permit(:description,:user_id,:lead_id)
    end
end
