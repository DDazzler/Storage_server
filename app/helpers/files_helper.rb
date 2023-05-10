module FilesHelper
  require 'fileutils'

  def file_size(file_path)
    if File.file?(file_path)
      format_file_size(File.size(file_path))
    else
      total_size = 0

      Dir.glob(File.join(file_path, '**', '*')) do |path|
        total_size += File.size(path) if File.file?(path)
      end

      format_file_size(total_size)
    end
  end

  def format_file_size(size_in_bytes)
    if size_in_bytes < 1024
      "#{'%.2f' % size_in_bytes} B"
    elsif size_in_bytes < 1024**2
      "#{'%.2f' % (size_in_bytes / 1024.0).round(2)} KB"
    elsif size_in_bytes < 1024**3
      "#{'%.2f' % (size_in_bytes / (1024.0**2)).round(2)} MB"
    else
      "#{'%.2f' % (size_in_bytes / (1024.0**3)).round(2)} GB"
    end
  end
end
