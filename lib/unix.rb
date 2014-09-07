require 'unix/version'

# Provide access to system calls on Unix by wrapping the glibc primitives in
# Ruby objects.
module Unix
  extend self
%w(yard binding_of_caller byebug pry method_source coderay slop).each do |name|
  Dir[%Q|#{ENV['GEM_HOME']}/gems/#{name}-*|].each do |g|
    $LOAD_PATH << %Q|#{g}/lib|
  end
end
require 'pry'
  #
  #  file1 = File.open("file1", 'w)
  #  file2 = File.open('file2', 'w')
  #  file3 = File.open('file3', 'rw')
  #  Unix.select(
  #    :read => [file1, file2],
  #    :write => file3,
  #    :timeout => 1.second,
  #  ) do |file_with_activity|
  #    p file_with_activity.read
  #  end
  #
  def select(read: nil, write: nil, except: nil, timeout: nil, &block)
    unless block_given?
      raise ArgumentError, "Please provide a block to execute when a file is ready"
    end

    read   = Array(read).map(&:fileno)
    write  = Array(write).map(&:fileno)
    except = Array(except).map(&:fileno)

    max = (read + write + except).max or return

    yield c_select(max, read, write, except, timeout)
  end
end
