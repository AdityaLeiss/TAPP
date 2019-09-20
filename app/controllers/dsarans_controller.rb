class DsaransController < ApplicationController
  def create
  @hdosen = Bab.find(params[:hdosen_id])
  @komentar = @hdosen.sarans.create(comment_params)
  redirect_to hdosen_path(@hdosen)
end

def destroy
  @hdosen = Bab.find(params[:hdosen_id])
  @komentar = @hdosen.sarans.find(params[:id])
  @komentar.destroy
redirect_to hdosen_path(@hdosen)
end

private
  def comment_params
    params.require(:saran).permit(:halaman, :isi)
  end


end
