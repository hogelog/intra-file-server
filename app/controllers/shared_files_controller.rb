class SharedFilesController < ApplicationController
  def index
    @shared_files = SharedFile.page(params[:page]).per(20)
  end

  def show
    @shared_file = SharedFile.find(params[:id])
  end

  def destroy
    @shared_file = SharedFile.find(params[:id])
    @shared_file.destroy
    redirect_to root_path
  end

  def download
    @shared_file = SharedFile.find(params[:id])
    path = @shared_file.path
    send_file path
  end
end
