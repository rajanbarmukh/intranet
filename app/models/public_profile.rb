class PublicProfile
  include Mongoid::Document
  include Mongoid::Paperclip
 
  field :first_name
  field :last_name
  field :gender
  field :mobile_number
  field :blood_group
  field :date_of_birth, :type => Date

  has_mongoid_attached_file :photo, :styles => { :thumb => "100x100#" }, 
                                    :path => ":rails_root/public/system/photo/:id/:style/:filename",
                                    :url => "/system/photo/:id/:style/:filename",    
                                    :default_url => "/system/default_photo.gif"

  #validates_attachment :photo, :content_type => { :content_type => "image/jpg" }

  embedded_in :user
=begin
  validates_presence_of :first_name, :last_name, :gender, :mobile_number, :date_of_birth, :on => :update
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed." }
  validates :gender, inclusion: { in: GENDER }, :on => :update
  validates :blood_group, inclusion: { in: BLOOD_GROUPS }, :on => :update
=end
end
