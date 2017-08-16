

#   create_table "houses", force: :cascade do |t|
#     t.string "address", null: false
#   end
#
#   create_table "people", force: :cascade do |t|
#     t.string "name"
#     t.integer "house_id"
#   end
#
# end

class House < ActiveRecord::Base

  has_many :residents,
  primary_key: :id,
  foreign_key: :house_id,
  class_name: 'Person'



end
