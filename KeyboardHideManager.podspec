Pod::Spec.new do |s|
    s.name                  = 'KeyboardHideManager'
    s.version               = '1.0.0'
    s.summary               = 'Codeless manager to hide keyboard by tapping on views for iOS written in Swift.'
    s.homepage              = 'https://github.com/bonyadmitr/KeyboardHideManager'
    s.author                = { 'Bondar Yaroslav' => 'bonyadmitr@gmail.com' }
    s.license               = { :type => "MIT", :file => "LICENSE.md" }
    s.ios.deployment_target = '8.0'
    s.source                = {:git => 'https://github.com/bonyadmitr/KeyboardHideManager.git', :tag => "#{s.version}" }
    s.source_files          = 'KeyboardHideManager/*.swift'
    s.screenshots      		= 'https://raw.githubusercontent.com/bonyadmitr/KeyboardHideManager/master/Resources/keyboard_icon.png',
    						  'https://raw.githubusercontent.com/bonyadmitr/KeyboardHideManager/master/Resources/preview.png'
end