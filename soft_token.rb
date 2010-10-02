class SoftToken
  include Java
  
  def self.start(command = "./soft_token", working_directory = '/Applications/SofToken II.app/Contents/MacOS')
    
    #create the command String
    cmd = String.new(command)
    
    #create the working directory
    work_dir = java::io::File.new(working_directory)
    
    begin
      r = java.lang.Runtime.getRuntime().exec(cmd, nil, work_dir)
    rescue Exception => e
      $stderr.print "Java told me: #{e}"
    end
  end
end
        
      
   
    
    
  
  