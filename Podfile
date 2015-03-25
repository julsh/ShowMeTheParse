platform :ios, '6.0'

xcodeproj 'ShowMeTheParse.xcodeproj'
inhibit_all_warnings!

pod 'Parse', '~> 1.6'

post_install do |rep|
	encourage_64_bit rep
end

def encourage_64_bit(rep)
	rep.project.targets.each do |target|
		target.build_configurations.each do |config|
			config.build_settings['ARCHS'] = "$(ARCHS_STANDARD_INCLUDING_64_BIT)"
		end
	end
end