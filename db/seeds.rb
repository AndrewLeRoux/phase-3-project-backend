puts "🌱 Seeding spices..."

arr = []
100.times do
    activity = RestClient.get "http://www.boredapi.com/api/activity/"
    activity_hash = JSON.parse(activity)

    if !arr.include?(activity)
        Activity.create(
            name: activity_hash["activity"],
            activity_type: activity_hash["type"],
            participants: activity_hash["participants"],
            price: activity_hash["price"]
        )
    
        arr.append(activity)
    end
end

puts "✅ Done seeding!"
