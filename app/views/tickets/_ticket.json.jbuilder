json.extract! ticket, :id, :number, :user_id, :raffle_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
