require 'json'
require 'start_work'

def start_work_handler(event:, context:)
  if event.is_a?(Hash)
    clock_name = event["ClockName"]
  else
    clock_name = event
  end

  start_time = Time.now.to_i

  StartWork.new(clock_name, start_time)
end
