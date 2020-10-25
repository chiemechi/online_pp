require 'rails_helper'

RSpec.describe Record, type: :model do

   before do
      @record = FactoryBot.build(:record )
    end
  
    describe '議事録の保存' do
      context "議事録が保存できる場合" do
        it "タイトルと日付と写真、メモがあればツイートは保存される" do
          expect(@record ).to be_valid
        end
        it "タイトルと日付のみあればツイートは保存される" do
          @record.memo = ""
          @record.image = ""
            expect(@record).to be_valid
        end
      end
  
      it 'メモが空でも保存できること' do
        @record.memo = "" 
        expect(@record ).to be_valid
      end

      it '写真が空でも保存できること' do
        @record.image= "" 
        expect(@record ).to be_valid
      end
  
  
     context "カードが保存できない場合" do
        it "タイトルがないとツイートは保存できない" do
          @record.title = ""
          @record.valid?
          expect(@record .errors.full_messages).to include("Title can't be blank")
        end     

        it "日付がないとツイートは保存できない" do
          @record.record_day = ""
          @record.valid?
          expect(@record .errors.full_messages).to include("Record day can't be blank")
        end     
      end
    end
end
