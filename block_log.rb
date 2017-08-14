$log_count = 0

def log(description, &block)
  if $log_count == 0
    print "Processing block"
  else
    puts
    print "Processing another block"
  end

  $log_count += 1

  4.times do
    sleep 1
    print "."
  end

  return_value = block.call

  puts "block completed. Output:"
  puts "#{return_value}"
end

log "testblock" do
  log "nextblock" do
    false
  end
  true
end
