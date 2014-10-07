json.array!(@line_up_booms) do |line_up_boom|
  json.extract! line_up_boom, :id, :DjName, :SetTime, :MusicStyle
  json.url line_up_boom_url(line_up_boom, format: :json)
end
