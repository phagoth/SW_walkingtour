json.array!(@scheduled_accesses) do |scheduled_access|
  json.extract! scheduled_access, :id, :order_id, :scheduled_date, :scheduled_begin_time, :sheduled_end_time
  json.url scheduled_access_url(scheduled_access, format: :json)
end
