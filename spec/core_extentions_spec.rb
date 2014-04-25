require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["","",""].all_empty?).to be_true
    end
    
    it "returns false if some of the Array elements are not empty" do
      expect(["", "X",""].all_empty?).to be_false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be_true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["X","X","X"].all_same?).to be_true
    end
    
    it "returns false if some of the Array elements are different" do
      expect(["","X",""].all_same?).to be_false
    end

    it "returns ture for an empty Array" do
      expect([].all_same?).to be_true
    end
  end

  context "#any_empty?" do
    it "returns true if any one of the element of the Array is empty" do
      expect(["","X", "X"].any_empty?).to be_true
    end

    it "returns false if no elements are empty" do
      expect(["X","X","X"].any_empty?).to be_false
    end

    it "returns false for an empty Array" do
      expect([].any_empty?).to be_false
    end
  end 

  context "#none_empty?" do
    it "returns true if all elements in the Array are filled" do
      expect(["X","X","X"].none_empty?).to be_true
    end


    it "returns false if a element is not empty" do
      expect(["","X",""].none_empty?).to be_false
    end

    it "returns true for an empty Array" do
      expect([].none_empty?).to be_true
    end

  end















end