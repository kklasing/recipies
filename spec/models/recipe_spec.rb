require 'spec_helper'

describe Recipe do

  before do
    @dishtype = Dishtype.new(name: "Voorgerecht")
    @dishtype.save
    @recipe = Recipe.new(name: "Titel van het gerecht", description: "De omschrijving van het gerecht", dishtype_id: @dishtype.id)
  end

  subject { @recipe }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:dishtype_id) }
  it { should respond_to(:number_of_persons) }
  it { should respond_to(:preparation_time) }
  it { should respond_to(:waiting_time) }
  it { should respond_to(:cooking_time) }

  it { should be_valid }

  describe "when name is not present" do
    before { @recipe.name = " " }

    it { should_not be_valid }
  end

  describe "when name is to long" do
    before { @recipe.name = "a" * 101 }

    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      recipe_with_same_name = @recipe.dup
      recipe_with_same_name.name = @recipe.name.upcase
      recipe_with_same_name.save
    end

    it { should_not be_valid }

  end

  describe "when description is not present" do
    before { @recipe.description = " " }

    it { should_not be_valid }
  end

  describe "when dishtype is not present" do
    before { @recipe.dishtype = nil }

    it { should_not be_valid }
  end

  describe "it should default number_of_persons to 1" do 
    it { @recipe.number_of_persons.should == 1 }
  end

  describe "when number of persons < 1" do
    before { @recipe.number_of_persons = 0 }

    it { should_not be_valid }
  end

  describe "it should default preparation_time to 0" do 
    it { @recipe.preparation_time.should == 0 }
  end

  describe "when preparation_time < 0" do 
    before { @recipe.preparation_time = -1 }
    it { should_not be_valid }
  end

  describe "it should default waiting_time to 0" do 
    it { @recipe.waiting_time.should == 0 }
  end

  describe "when waiting_time < 0" do 
    before { @recipe.waiting_time = -1 }
    it { should_not be_valid }
  end

  describe "it should default cooking_time to 0" do 
    it { @recipe.cooking_time.should == 0 }
  end

  describe "when cooking_time < 0" do 
    before { @recipe.cooking_time = -1 }
    it { should_not be_valid }
  end


end