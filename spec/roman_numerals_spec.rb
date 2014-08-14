require 'roman_numerals'

describe "romanize" do

	it "returns I for 1" do
		expect(romanize(1)).to eq "I"
	end

	it "returns II for 2" do
		expect(romanize(2)).to eq "II"
	end

	it "returns III for 3" do
		expect(romanize(3)).to eq "III"
	end

	it "returns IV for 4" do
		expect(romanize(4)).to eq "IV"
	end

	it "returns V for 5" do
		expect(romanize(5)).to eq "V"
	end

	it "returns VI for 6" do
		expect(romanize(6)).to eq "VI"
	end

	it "returns VIII for 8" do
		expect(romanize(8)).to eq "VIII"
	end

	it "returns XV for 15" do
		expect(romanize(15)).to eq "XV"
	end

	it "returns XXI for 21" do
		expect(romanize(21)).to eq "XXI"
	end

	it "returns XXXV for 35" do
		expect(romanize(35)).to eq "XXXV"
	end

	it "returns XLIV for 44" do
		expect(romanize(44)).to eq "XLIV"
	end

	it "returns XCVIII for 98" do
		expect(romanize(98)).to eq "XCVIII"
	end

	it "returns CMIV for 904" do
		expect(romanize(904)).to eq "CMIV"
	end

	it "returns CMIX for 909" do
		expect(romanize(909)).to eq "CMIX"
	end

	it "returns MMMCC for 3200" do
		expect(romanize(3200)).to eq "MMMCC"
	end

end