require 'spec_helper'

describe User do
  before { @user = User.new(login: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:login) }
  it { should respond_to(:email) }
  it { should be_valid }

  describe "when login is not present" do
    before { @user.login = " " }
    it { should_not be_valid }
  end
end
