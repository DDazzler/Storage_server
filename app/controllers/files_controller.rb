class FilesController < ApplicationController
  require 'zip'

  def index
    @files = Dir.glob('/mnt/HDD1TB/Storage\ Server/*')
  end

  def download
    send_file params[:file], disposition: 'attachment'
  end

  def download_folder
    folder_path = params[:folder_path] + '/'
    folder_name = folder_path.split('/').last
    folder_name += '.zip'
    temp_file = Tempfile.new(folder_name)
    Zip::File.open(temp_file.path, Zip::File::CREATE) do |zipfile|
      Dir[File.join(folder_path, '**', '**')].each do |file|
        zipfile.add(file.sub(folder_path, ''), file)
      end
    end
    send_file temp_file.path, filename: folder_name, type: 'application/zip'
  end

  include ActionView::Helpers::NumberHelper
end
