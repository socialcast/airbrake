if defined?(PhusionPassenger)
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
    if forked
      Airbrake::Sender.reset_thread!
    end
  end
end
