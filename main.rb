require 'tray_application.rb'; 
require 'soft_token.rb';

app = TrayApplication.new("SoftToken II")
app.icon_filename = 'lock.png'
app.item('Start')  {SoftToken.start}
app.item('Exit')              {java.lang.System::exit(0)}
app.run