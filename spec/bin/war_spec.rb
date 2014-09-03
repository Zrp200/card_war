RSpec.describe "war" do
	describe "--help" do
		subject {`bin/war --help`}
		it "should return a help message" do
			expect(subject).to match /version/
		end
	end
end
