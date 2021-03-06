class User < ActiveRecord::Base

  has_many :idol_relationships, foreign_key: "fan_id", class_name: "Relationship"
  has_many :fan_relationships, foreign_key: "idol_id", class_name: "Relationship"

  has_many :fans, through: :fan_relationships
  has_many :idols, through: :idol_relationships

  # Remember to create a migration!
end
