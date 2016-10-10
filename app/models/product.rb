class Product < ActiveRecord::Base

  has_many :order_items
  has_one :description
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
                    
                    
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 
  
  validates :name, presence: true
  validates :price, presence: true
  
  default_scope { where(active: true) }
  
  def self.search(search)
  where("description LIKE ? OR name LIKE ?", "%#{search}%", "%#{search}%")
  end
  
end
