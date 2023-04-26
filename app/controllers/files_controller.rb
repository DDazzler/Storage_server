class FilesController < ApplicationController
  def index
    @files = Dir.glob("/mnt/HDD1TB/Storage\ Server/*")
  end

    def download
    send_file params[:file], disposition: 'attachment'
  end

include ActionView::Helpers::NumberHelper

  
end
