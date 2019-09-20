class SaransController < ApplicationController
  def create
  @bab = Bab.find(params[:bab_id])
  @komentar = @bab.sarans.create(comment_params)
  redirect_to bab_path(@bab)
end

def destroy
  @bab = Bab.find(params[:bab_id])
  @komentar = @bab.sarans.find(params[:id])
  @komentar.destroy
redirect_to bab_path(@bab)
end

private
  def comment_params
    params.require(:saran).permit(:halaman, :isi)
  end


end
