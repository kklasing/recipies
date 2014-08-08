require 'spec_helper'

describe Dishtype do

  before { @dishtype = Dishtype.new(name: "Voorgerecht") }

  subject { @dishtype }

  it { should respond_to(:name) }

end