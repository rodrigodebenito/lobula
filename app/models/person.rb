class Person < ActiveRecord::Base
  attr_accessible :biography, :email, :name, :resume, :summary, :bitmap
  base = ENV['OPENSHIFT_DATA_DIR']? ENV['OPENSHIFT_DATA_DIR'] : ':rails_root/'
  has_attached_file :bitmap,
    :url  => '/uploads/:class/:attachment/:id/:style/:basename.:extension',
    :path  => base + 'public:url'
end
