require_relative "stock_picker"
	describe "STOCK PICKER" do
	
		describe "Checks the format" do
			describe "check_format" do
				it "accepts integers" do
					check_format("34").should == true
				end
				it "accepts floats" do
					check_format("2.3").should == true
				end
				it "doesn't accept non-numbers" do
					check_format("4.2.5").should == false
				end
				it "only accepts two digits after decimal" do
					check_format("4.354").should == false
				end
			end
		end
		describe "Gives the correct answer" do
			describe "check_for_best" do
				it "gives answer when lowest first and highest last" do
					check_for_best([1,2,10,20]).should eq("Your profit will be 19 if you choose to buy on DAY 1 and sell on DAY 4")
				end
				it "knows a stock must be bought before being sold" do
					check_for_best([95,100,3,15]).should eq("Your profit will be 12 if you choose to buy on DAY 3 and sell on DAY 4")
				end
			end
		end
	end