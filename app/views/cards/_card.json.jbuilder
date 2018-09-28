json.extract! card, :id, :cardname, :cardtext, :cardtype, :cardset, :cardrarity, :created_at, :updated_at
json.url card_url(card, format: :json)
