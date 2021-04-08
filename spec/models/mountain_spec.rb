require 'rails_helper'

RSpec.describe Mountain, type: :model do
  
  before do
    @mountain = FactoryBot.build(:mountain)
  end

  describe '山の新規登録' do

    context '山の新規登録ができるとき' do
 
      it '山の名前、説明、標高、難易度、時間、都道府県、市町村、画像が存在すれば登録できる' do
        
        expect(@mountain).to be_valid

      end



    end


    context '山の新規登録ができないとき' do
 
    end



  end



end
