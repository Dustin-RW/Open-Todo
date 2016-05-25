class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :full_name, :email, :bio, :password

  # Delegate the practical definition of `full_name` to
  # the User model, where it belongs, rather than
  # (re)defining it here.

  def email
    object.email
  end

  def bio
    object.bio
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
