def simulate_studying(subject:, diligence:)
  current_session = 0
  progress = 0

  puts "Studying #{subject}"

  while progress < 100 && block_given?
    current_session += 1
    progress - 10 if progress > 15
    puts "----------------"
    puts "Continuing studying, current progress is #{progress}%.\n" unless current_session == 1

    session_efficiency = yield(current_session, diligence) if block_given?
    session_efficiency = 100 if session_efficiency > 100
    progress += session_efficiency / current_session
    puts "Session #{current_session} complete (Session was #{session_efficiency}% efficient)\n\n"

    sleep(0.1)
    puts "Taking a break"
  end

  puts "Finished! #{subject} took #{current_session} sessions to complete."
end

# Set diligence between 1 and 100

# Linear session efficiency
simulate_studying(subject: "Francais", diligence: 20) { |session, diligence| session + diligence }
# More random session efficiency
simulate_studying(subject: "OOP", diligence: 100) { |session, diligence| (session * rand(0..diligence)) }

