class Picture < ActiveRecord::Base
  belongs_to :project
  attr_accessible :caption, :credit, :weight, :bitmap, :project_id, :active, :href
  base = ENV['OPENSHIFT_DATA_DIR']? ENV['OPENSHIFT_DATA_DIR'] : ':rails_root/'
  has_attached_file :bitmap,
    :url  => '/uploads/:class/:attachment/:id/:style/:basename.:extension',
    :path  => base + 'public:url',
    :styles => {
      :large => ["1280", :jpg],
      :medium => ["640", :jpg],
      :small => ["320", :jpg],
      :thumb => ["160x160#", :jpg]
  }
end
