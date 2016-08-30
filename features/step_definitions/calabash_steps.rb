require 'calabash-android/calabash_steps'

When /^no ip$/ do
	wait_for(:timeout => 1) {
		element_exists("* id:'address'")
	}
	check_element_exists("* id:'address'")
	query("* id:'address'", setText:"")
end

And /^I click on LOGIN Button$/ do
	check_element_exists("* id:'btn_login'")
	touch("* id:'btn_login'")
end
