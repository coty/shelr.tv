require 'spec_helper'

describe User do

  subject { build :user }

  it_behaves_like "editable with restrictions"
  it_behaves_like "editable by God"
  it_behaves_like "editable by Owner"

  its(:owner) { should_not be_blank }

  describe "on create" do
    it "should generate api key" do
      subject.should_receive(:generate_api_key!)
      subject.save
    end

    it "should be renamed if nickname blank" do
      subject.should_receive(:maybe_assign_nickname_placeholder)
      subject.save
    end
  end

  describe "#maybe_assign_nickname_placeholder" do
    it "should change blank nickname to 'noname'" do
      subject.nickname = ''
      subject.save.should be_true
      subject.nickname.should == 'noname'
    end
  end

  describe "#generate_api_key" do
    it "should assign random md5 hash to #api_key" do
      subject.api_key.should be_blank
      subject.generate_api_key
      subject.api_key.should_not be_blank
    end
  end

  describe "#generate_api_key!" do
    before(:each) { subject.save }

    it "should call generate_api_key" do
      subject.should_receive :generate_api_key
      subject.generate_api_key!
    end

    it "should save the record" do
      subject.should_receive :save
      subject.generate_api_key!
    end
  end

  describe "#avatar_url(size)" do
    context "when user is Anonymous" do
      it "should return anonymous.png" do
        subject.nickname = 'Anonymous'
        subject.avatar_url("100x100")
          .should == '/assets/avatars/anonymous-100x100.png'
      end
    end

    context "when email is blank" do
      it "should return default avatar" do
        subject.email = ""
        subject.avatar_url("100x100")
          .should == "/assets/avatars/default-100x100.png"
      end
    end
  end
end
