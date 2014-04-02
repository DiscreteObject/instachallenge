require 'spec_helper'

describe Query do
  it { should validate_presence_of(:latitude) }
  it { should validate_presence_of(:longitude) }
end
