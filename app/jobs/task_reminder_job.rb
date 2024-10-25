class TaskReminderJob < ApplicationJob
  queue_as :default

  def perform(task)
    # Simulating a long-running task
    sleep(5)
    puts "Processing task: #{task.title}"
  end
end
