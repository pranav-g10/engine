# encoding: utf-8

module Locomotive
  class EditableFileUploader < ::CarrierWave::Uploader::Base

    include ::CarrierWave::MimeTypes

    process :set_content_type

    def store_dir
      self.build_store_dir('sites', model.page.site_id, 'pages', model.page.id, 'files')
    end

    def image?
      if self.file.exists?
        self.file.content_type.start_with?('image')
      end
    end

  end
end
