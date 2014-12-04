class PostingsController < ApplicationController
  before_action :set_posting, only: [:edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @postings = Posting.all
  end

  def show
    @posting = Posting.find(params[:id])
  end

  def new
    @posting = Posting.new
  end

  def edit
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.user_id = current_user.id
    if @posting.save
      redirect_to @posting, notice: "Posting created Successfully" 
    else
      flash[:error] = @posting.errors.full_messages.to_sentence
      redirect_to new_posting_path
    end
  end

  def update
    if @posting.update(posting_params)
      redirect_to @posting, notice: 'Posting was successfully updated.' 
    else
      render :edit
    end
  end

  def destroy
    @posting.destroy
    redirect_to postings_path, notice: 'Posting was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_posting
    @posting = Posting.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def posting_params
    # params.require(:product).permit(:title, :description, :housingtype, :cost, :bedrooms, :user_id)
    params.require(:posting).permit(:title, :description, :cost, :housing_type, :bedroom_num, :image)
  end
end
