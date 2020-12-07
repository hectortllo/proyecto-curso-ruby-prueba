require './src/archive.rb'
require 'io/console'
require 'bcrypt'

def main
  file = Archive.new
  puts "Ingrese su nombre de usuario: "
  username = gets.chomp
  puts "Ingrese su contraseña: "
  password = BCrypt::Password.create(STDIN.noecho(&:gets).chomp)
  file.write_file(username, password)
end

main