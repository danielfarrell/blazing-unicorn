require "blazing/recipe"

class Blazing::Recipe::RollingRestart < Blazing::Recipe

  def run(target_options = {})
    super target_options

    info "restarting unicorn"
    Process.kill("USR2", pid)
  end

  private

  def pid
    File.read(pid_file).to_i
  end

  def pid_file
    options[:pid_file] || "tmp/pids/unicorn.pid"
  end

end
