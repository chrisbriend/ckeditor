require 'orm_adapter'

module Ckeditor
  IMAGE_TYPES = ['image/jpeg', 'image/png', 'image/gif', 'image/jpg', 'image/pjpeg', 'image/tiff', 'image/x-png']
  
  autoload :Utils, 'ckeditor/utils'
  autoload :Http, 'ckeditor/http'
  
  module Helpers
    autoload :ViewHelper, 'ckeditor/helpers/view_helper'
    autoload :FormHelper, 'ckeditor/helpers/form_helper'
    autoload :FormBuilder, 'ckeditor/helpers/form_builder'
  end
  
  module Hooks
    autoload :FormtasticBuilder, 'ckeditor/hooks/formtastic'
    autoload :SimpleFormBuilder, 'ckeditor/hooks/simple_form'
  end
  
  # Default way to setup Ckeditor. Run rails generate ckeditor to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end
  
  def self.picture_model
    Ckeditor::Picture.to_adapter
  end
end

require 'ckeditor/engine'
require 'ckeditor/version'