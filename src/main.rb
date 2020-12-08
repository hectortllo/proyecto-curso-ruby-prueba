require './src/login.rb'

def main
  login = Login.new
  login.user_exist?
end

main