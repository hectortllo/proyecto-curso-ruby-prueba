class Archive
  def read_file
    File.open('./dist/user.txt', 'r') do |f|
      while line = f.gets
        puts line
      end
    end
  end

  def write_file(username, password)
    File.open('./dist/user.txt', 'w') do |f|
      f.puts username
      f.puts password
    end
  end
end