require 'spec_helper'

describe Dishtype do

  before do
    @dishtype = Dishtype.new(name: "Voorgerecht")
  end

  subject { @dishtype }

  it { should respond_to(:name) }

  it { should be_valid }

  describe "when name is not present" do
    before { @dishtype.name = " " }

    it { should_not be_valid }
  end

  describe "when name is to long" do
    before { @dishtype.name = "a" * 51 }

    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      dishtype_with_same_name = @dishtype.dup
      dishtype_with_same_name.name = @dishtype.name.upcase
      dishtype_with_same_name.save
    end

    it { should_not be_valid }

  end

end