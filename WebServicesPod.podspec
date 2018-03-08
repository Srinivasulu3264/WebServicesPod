#
#  Be sure to run `pod spec lint WebServicesPod.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "WebServicesPod"

  s.version      = "0.0.5"

  s.summary      = "WebServicesPod will import the almofire framework"

  s.description  = " It contains  Almofire framework. with this we call call web services 		in this pod."

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author       = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }


  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "11.0"

  #

  s.source       = { :git => "https://github.com/Srinivasulu3264/WebServicesPod.git", :tag => "0.0.5" }


  s.source_files  = "WebServicesPod", "WebServicesPod/**/*.{h,m,swift}"

  s.resources = "WebServicesPod/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}"

#  s.resource_bundle = {
#      'WebServicesPod' => 
#        'WebServicesPod/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}'
#    }


  s.framework = "UIKit"


pod 'Alamofire', '~> 4.7'
pod 'SwiftyJSON'


  s.requires_arc = true

 `echo "3.2" > .swift-version`

end
