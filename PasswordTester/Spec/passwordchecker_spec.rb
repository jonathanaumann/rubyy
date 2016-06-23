require_relative ("../models/passwordchecker.rb")
RSpec.describe PasswordChecker do
it "checks password for characters greater than 7" do
	pass= PasswordChecker.new
	expect(pass.check_password("j@hot.com", "Lmao$0000")).to eq(true)
	end
end