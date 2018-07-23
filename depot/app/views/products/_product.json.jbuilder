json.extract! product, :id, :name, :affiliation, :email_address, :phone_number, :title, :description, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
