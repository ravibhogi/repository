
file 'C:\Users\jparasha\documents\learn-chef\settingsnew.ini' do
  content 'greeting=hello Ravi'
  
end
powershell_script 'Install JBoss' do
  code 'Add-WindowsFeature Application-Server'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name Application-Server).Installed"
end

