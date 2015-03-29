require 'pry'
require 'docsplit'

module Parsley
  EXTRACTED_TEXT_DIRECTORY = "data/extracted_text"
  PDFS_DIRECTORY = "data/pdfs"

  def self.extract_text(filename)
    Docsplit.extract_text("#{PDFS_DIRECTORY}/#{filename}", output: EXTRACTED_TEXT_DIRECTORY)
  end

  def self.bulk_extract_text!
    filenames = Dir.chdir(PDFS_DIRECTORY) { Dir["*.pdf"] }

    filenames.each do |filename|
      begin
        if File.exist?("#{EXTRACTED_TEXT_DIRECTORY}/#{filename.sub(/\.pdf$/, '.txt')}")
          print 's'
        else
          extract_text(filename)
          print '.'
        end
      rescue
        print 'F'
      end
    end
  end

end
