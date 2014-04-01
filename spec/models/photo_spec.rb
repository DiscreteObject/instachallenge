require 'spec_helper'

describe Photo do
  it { should valdiate_presence_of(:link) }
  it { should valdiate_presence_of(:username) }
end