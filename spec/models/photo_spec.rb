require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:post_type) }
  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:username) }
end