

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

class Person < ActiveRecord::Base

  belongs_to :house,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'House'




end
