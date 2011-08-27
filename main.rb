require 'tray_application.rb'; 
require 'soft_token.rb';

#create the application object
app = TrayApplication.new("SoftToken II")

#Set the icon filename
app.icon_filename = 'lock.png'

#Start the app
app.item('Start'){
  SoftToken.start
}

#Exit the app
app.item('Exit'){
  java.lang.System::exit(0)
}
app.run
