require 'tdd_practice'
require 'rspec'

Rspec.describe do
  let(:array1) {[1,2,1,3,3,-1]}
  let(:array2) {[1,2,1,3,3]}
  let(:array3) {[1,2,1,3,3,-1,-1]}
  let(:empty_array) { [] }
  describe "#my_uniq" do
    it "removes duplicates from an array" do
      expect(array1.my_uniq).to eq([1,2,3,-1])
    end

    it "return an empty array if the array is empty" do
      expect(empty_array.my_uniq).to be_empty
    end
  end

  describe "#two_sum" do
    it "finds all pairs of positiion where the elements at those positions sum to zero" do
      expect(array1.two_sum).to eq([[0,5],[2,5]])
    end

    it "returns an empty array when no elements sum to zero" do
      expect(array2.two_sum).to be_empty
    end

    it "should return back an array of arrays sorted dictionary-wise" do
      expect(array3.two_sum).to eq([[0,5],[0,6],[2,5],[2,6]])
    end
  end

  describe "#my_transpose" do
    let(:rows) {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}
    it "convert between the row-oriented and column-oriented representations" do
      expect(rows.my_transpose)to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

    it "returns an empty array if array is empty" do
      expect(empty_array.my_transpose).to eq([])
    end

    it "handles a rectangular array" do
      expect(array1.my_transpose).to eq([[1],[2],[1],[3],[3],[-1]])
    end
  end


end
