def clock(&block)
  hours = Time.new.hour % 12
  hours = 12 if hours == 0
  hours.times { block.call }
end

clock do
  puts "Dong!"
  sleep 2
end
