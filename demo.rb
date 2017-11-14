require_relative 'lib/sql_object'
require_relative 'lib/db_connection'

class Motto < SQLObject
  has_many :houses,
    class_name: "House",
    primary_key: :id,
    foreign_key: :motto_id

  has_one_through :members, :houses, :member

  finalize!
end

class House < SQLObject
  belongs_to :motto,
    class_name: "Motto",
    primary_key: :id,
    foreign_key: :motto_id

  has_many :members,
    class_name: "Member",
    primary_key: :id,
    foreign_key: :house_id

  finalize!
end

class Member < SQLObject
  belongs_to :house,
    class_name: "House",
    primary_key: :id,
    foreign_key: :house_id

  has_one_through :motto, :house, :motto

  finalize!
end
