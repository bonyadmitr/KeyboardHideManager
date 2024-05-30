Pod::Spec.new do |s|
    s.name                  = 'KeyboardHideManager'
    s.version               = '1.3.0'
    s.summary               = 'Codeless manager to hide keyboard by tapping on views for iOS written in Swift.'
    s.homepage              = 'https://github.com/bonyadmitr/KeyboardHideManager'
    s.author                = { 'Bondar Yaroslav' => 'bonyadmitr@gmail.com' }
    s.license               = { :type => "MIT", :file => "LICENSE.md" }
    s.ios.deployment_target = '12.0'
    s.source                = { :git => s.homepage.to_s + '.git', :tag => s.version.to_s }
    s.source_files          = 'KeyboardHideManager/*.swift'
end
