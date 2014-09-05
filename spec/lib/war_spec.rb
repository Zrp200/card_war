require 'spec_helper'
include CardDeck
RSpec.describe Card do
	describe "#value" do
		number = (2..10).to_a.sample
		context "when #{number}" do
			subject {Card.new number}
			it "should == {subject.num}" {expect(subject.value).to eq subject.num}
		end
		context "when Jack" do
			subject {Card.new "Jack"}
			it "should == 11" {expect(subject.value).to eq 11}
		end
	end
end
