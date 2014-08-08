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

end