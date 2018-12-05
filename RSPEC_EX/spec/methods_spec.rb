require "rspec"
require "methods"

describe Array do
    subject(:array) {[1,1,2,3,3,4]}
    let(:empty_array) { [] }

    describe "#my_uniq" do
        it "return a new array with duplicate elements removed" do
            expect(array.my_uniq).not_to be(array)
            expect(array.my_uniq).to eq([1,2,3,4])
        end
        it "does not receive built in uniq method" do
            expect(array).not_to receive(:uniq)
            array.my_uniq
        end
    end

    describe "two_sum" do
        let(:target) {6}
        it "returns the indices of elements that sum to the target" do
            expect(array.two_sum(target)).to eq([[2,5], [3,4]])
            expect(empty_array.two_sum(target)).to eq([])
        end
        it "does not use the same index twice" do
            expect(array.two_sum(target)).not_to include([3,3])
            expect(array.two_sum(target)).not_to include([4,4])
        end
    end

    describe "#my_transpose" do
        let(:array1) {[0, 1, 2]}
        let(:array2) {[3, 4, 5]}
        let(:array3) {[6, 7, 8]}

        it "returns the transposed 2-d array" do
            expect([array1, array2, array3].my_transpose).to eq([array1, array2, array3].transpose)
        end

        it "does not receive built in transpose method" do
            expect([array1, array2, array3]).not_to receive(:transpose)
            [array1, array2, array3].my_transpose
        end
    end
end

describe "#stock_picker" do
    subject(:prices) {[10,20,30,15,5]}

    it "returns the best pair of days to buy and sell" do
        expect(stock_picker(prices)).to eq([0,2])
    end
    it "returns result in ascending order" do
        expect(stock_picker(prices)).not_to eq([4,2])
    end
end



