require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  

  describe "#initialize" do
  subject(:dessert) { Dessert.new('chocolate', 50, :chef) }

    it "sets a type" do
      expect(dessert.type).to eq('chocolate')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end
    
    it "raises an argument error when given a non-integer quantity" do
      expect{ dessert.quantity('lots') }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
  subject(:dessert) { Dessert.new('chocolate', 50, :chef) }

    before(:each) do
      dessert.add_ingredient('cacao')
      dessert.add_ingredient('sugar')
      dessert.add_ingredient('milk')
    end
      it "adds an ingredient to the ingredients array" do
        expect(dessert.ingredients).to include('cacao')
    end
    

    describe "#mix!" do
    subject(:dessert) { Dessert.new('chocolate', 50, :chef) }

      it "shuffles the ingredient array" do
        expect(dessert.mix!).to include('cacao', 'milk', 'sugar')
      end
    end

    describe "#eat" do
    subject(:dessert) { Dessert.new('chocolate', 50, :chef) }
    
    
      it "subtracts an amount from the quantity" do
        dessert.eat(1)
        expect(dessert.quantity).to eq(49) 
      end
    

      it "raises an error if the amount is greater than the quantity" do

        expect{dessert.eat(100)}.to raise_error(RuntimeError)
      end
    end

    describe "#serve" do
      it "contains the titleized version of the chef's name"
    end

    describe "#make_more" do
      it "calls bake on the dessert's chef with the dessert passed in"
    end
  end
end
