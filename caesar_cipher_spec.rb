require "caesar_cipher"  #not sure how to get this to work without commenting out first half of caesar_cipher.rb

describe "shifts letters" do
	describe "caesar_shift" do
		it "does lowercase letters" do
			caesar_shift("a",1).should == "b"
		end
		it "does uppercase letters" do
			caesar_shift("A", 1).should == "B"
		end
		it "wraps around" do
			caesar_shift("Z", 1).should == "A"
		end
		it "does multiple letters" do
			caesar_shift("abcXYZ",1).should == "bcdYZA"
		end
		it "ignores numbers and punctuation" do
			caesar_shift("1/2.3#4", 1).should == "1/2.3#4"
		end
	end
end
			
