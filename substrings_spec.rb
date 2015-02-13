require_relative "substrings"
	describe "SUBSTRINGS" do
		it "finds frequencies of single words" do
			substring("hello", ["l"]).should == {"l"=>2}
		end
		it "finds frequencies with multiple words" do
			substring("hello, there", ["e"]).should == {"e"=>3}
		end
		it "isn't case-sensitive" do
			substring("HELLO", ["e"]).should == {"e"=>1}
		end
	end
	