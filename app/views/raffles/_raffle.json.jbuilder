json.extract! raffle, :id, :title, :description, :probable_draw_at, :start_sale_at, :finishes_sale_at, :drawn_at, :ticket_value, :user_id, :kind_id, :created_at, :updated_at
json.url raffle_url(raffle, format: :json)
