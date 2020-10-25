require 'rails_helper'

RSpec.describe Card, type: :model do
  before do
    @card = FactoryBot.build(:card)
  end

  describe 'カードの保存' do
    context "カードが保存できる場合" do
      it "タイトルとメモと写真があればツイートは保存される" do
        expect(@card).to be_valid
      end
      it "タイトルのみあればツイートは保存される" do
        @card.memo = ""
        @card.image = ""
          expect(@card).to be_valid
      end

    it 'メモが空でも保存できること' do
      @card.memo = "" 
      expect(@card).to be_valid
    end

    it '写真が空でも保存できること' do
      @card.image = "" 
      expect(@card).to be_valid
    end
    end
    
    context "カードが保存できない場合" do
      it "タイトルがないとツイートは保存できない" do
        @card.title = ""
        @card.valid?
        expect(@card.errors.full_messages).to include("Title can't be blank")
      end     
      it "リストが紐付いていないとツイートは保存できない" do
        @card.list = nil
       @card.valid?
      expect(@card.errors.full_messages).to include("List must exist")
      end

    end

  end
end