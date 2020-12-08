class Archive

  def initialize
    @@file = false
    @user_info = Array.new
  end
  
  def read_file
    File.open('./dist/user.txt', 'r') do |f|
      while line = f.gets
        @user_info.append(line)
      end
    end
    return @user_info
  end

  def write_file(username, password)
    File.open('./dist/user.txt', 'w') do |f|
      f.puts username
      f.puts password
    end
  end

  def file_exists?
    return File.file?('./dist/user.txt')
  end
end