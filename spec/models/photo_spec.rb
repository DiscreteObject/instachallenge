require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:username) }

  it { should validate_uniqueness_of(:link) }
end