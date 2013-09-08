# Even better profiling
def profile(block_description, &block)
  profiling_on = false

  if profiling_on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile '25000 doublings' do
  number = 1

  25000.times do
  number = number + number
  end 

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number. 
end

profile 'count to a million' do 
  number = 0

  1000000.times do
    number = number + 1
  end 
end

# Grandfather Clock
def grandfather_clock(&block)
  hour = Time.new.hour

  if hour >= 13
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    block.call
  end
end

grandfather_clock.do
  puts "DONG!"
end