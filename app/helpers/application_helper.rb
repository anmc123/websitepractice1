module ApplicationHelper
  def avatar_url(user)
  gravatar_id = Digest::MD5::hexdigest(user.email).downcase
  "https://secure.gravatar.com/avatar/1c0948df53565f982c6efdfabfcfa537"
end
end
