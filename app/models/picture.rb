# -*- coding: undecided -*-
class Picture < ActiveRecord::Base
  has_attached_file :photo, 
    :styles =>  { 
      :medium => "300x300>", # >はリサイズ、#はトリミング
      :thumb => "100x100>" 
    }, 
    :default_url => "/images/:style/missing.png",
    :url => "/system/storage/album_id/:id/:style/:hash.:extension",
    :hash_secret => "longSecretString"
end
