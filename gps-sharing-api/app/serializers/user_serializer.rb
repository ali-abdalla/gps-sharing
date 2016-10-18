class UserSerializer < ActiveModel::Serializer
  attributes :id, :data, :trace
  def id
    object.guid
  end

  def data
    {
      firstname: object.firstname,
      lastname: object.lastname,
      email: object.email
    }
  end

  def trace
    {
      created_at: object.created_at,
      updated_at: object.updated_at
    }
  end
end
