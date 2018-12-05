require "rspec"
require "tower_of_hanoi"

describe TowersOfHanoi do
    subject(:towers) {TowersOfHanoi.new}
    let(:tower1) {[3,2,1]}
    let(:tower2) {[]}
    let(:tower3) {[]}

    describe "#initialize" do
        it "initializes three arrays" do
            expect(towers.game.length).to eq(3)
        end

        it "makes the first tower(array) have three discs in descending order" do
            expect(towers.game[0]).to eq([3,2,1])
        end

        it "makes the other two towers empty" do
            expect(towers.game[1]).to be_empty
            expect(towers.game[2]).to be_empty
        end
    end

    describe "#valid_move?" do
        context "When the first disc of the receiving tower is greater than the disc being inserted" do
            it "checks if the move is valid" do
                expect(valid_move(tower1,tower2)).to be_true
            end
        end
        context "When the first disc of the receiving tower is smaller than the disc being inserted" do
            let(:tower1) {[1,3]}
            let(:tower2) {[2]}
            it "checks if the move is valid" do
                expect(valid_move(tower1,tower2)).to be_false
            end
        end
        context "When the tower being taken from is empty" do
            it "Raises an error if the tower being taken from is empty" do
                expect(valid_move(tower2,tower1)).to raise_error(EmptyTower)
            end
        end 
    end
end