class Archive

  def initialize
    @@file = false
    @user_info = Array.new
  end
  
=begin
  Este método sirve leer el archivo, que estará
  creado solo si el usuario ya creó su cuenta.
  Los datos ya guardados en el archivo, se
  almacenarán en la variable @user_info
=end
  def read_file
    File.open('./dist/user.txt', 'r') do |f|
      while line = f.gets
        @user_info.append(line)
      end
    end
    return @user_info
  end

=begin
  Este método se encarga de escribir en el archivo.
  El archivo no existirá cuando se inicie la aplicación
  por primera vez. Este método creará el archivo,
  y escribirá en él
=end
  def write_file(username, password)
    File.open('./dist/user.txt', 'w') do |f|
      f.puts username
      f.puts password
    end
  end

=begin
  Este método se encarga de averiguar si el archivo
  user.txt existe en la ruta especificada
=end
  def file_exists?
    return File.file?('./dist/user.txt')
  end
end