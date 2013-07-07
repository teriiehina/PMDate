Pod::Spec.new do |s|

  s.name         = "PMDate"
  s.version      = "0.0.1"

  s.summary      = "would you like to do [NSDate date][@\"two days ago\"] ? now you can :)"
  s.homepage     = "https://github.com/teriiehina/PMDate"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "Peter MEUEL" => "peter@teriiehina.net" }
  s.source       = { :git => "https://github.com/teriiehina/PMDate.git", :tag => "0.0.1" }
  
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'PMDate/**/*.{h,m}'
  s.requires_arc = true

end
