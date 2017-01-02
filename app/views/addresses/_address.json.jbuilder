json.extract! address, :id, :address1, :address2, :city, :state, :zip, :created_at, :updated_at
json.url address_url(address, format: :json)