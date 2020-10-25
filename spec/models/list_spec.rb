require 'rails_helper'

RSpec.describe List, type: :model do
  
  before do
    @list = FactoryBot.build(:list)
  end

  describe 'listの保存' do
    context "リストが保存できる場合" do
      it "タイトルがあればツイートは保存される" do
        expect(@list).to be_valid
      end
    end
    context "ツイートが保存できない場合" do
      it "タイトルがないとツイートは保存できない" do
        @list.title = ""
        @list.valid?
        expect(@list.errors.full_messages).to include("Title can't be blank")
      end     
      it "ユーザーが紐付いていないとタイトルは保存できない" do
     @list.user = nil
    @list.valid?
    expect( @list.errors.full_messages).to include("User must exist")
      end
    end
  end
end