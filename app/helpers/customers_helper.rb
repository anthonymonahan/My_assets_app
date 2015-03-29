module CustomersHelper# Returns the Gravatar for the given user.
  def gravatar_for(customer)
    gravatar_id = Digest::MD5::hexdigest(customer.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: customer.CustomerName, class: "gravatar")
  end


end
