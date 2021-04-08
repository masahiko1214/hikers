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

      it '山のある住所は空欄でも登録できる' do
        @mountain.address = ''
        expect(@mountain).to be_valid
      end


    end


    context '山の新規登録ができないとき' do

      it '山の名前が空では登録できない' do
        @mountain.name = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Name can't be blank"
      end

      it '山の説明が空では登録できない' do
        @mountain.explanation = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Explanation can't be blank"
      end

      it '山の標高が空では登録できない' do
        @mountain.elevation = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Elevation can't be blank"
      end

      it '山の市町村が空では登録できない' do
        @mountain.municipality = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Municipality can't be blank"
      end

      it '山の難易度が空では登録できない' do
        @mountain.level_id = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Level is not a number"
      end

      it '山の難易度において1を選ぶと登録できない' do
        @mountain.level_id = 1
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include 'Level must be other than 1'
      end

      it '山の時間が空では登録できない' do
        @mountain.time_mountain_id = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Time mountain is not a number"
      end

      it '山の時間において1を選ぶと登録できない' do
        @mountain.time_mountain_id = 1
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include 'Time mountain must be other than 1'
      end

      it '山の都道府県が空では登録できない' do
        @mountain.prefecture_id = ''
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include "Prefecture is not a number"
      end

      it '山の都道府県において1を選ぶと登録できない' do
        @mountain.prefecture_id = 1
        @mountain.valid?
        expect(@mountain.errors.full_messages).to include 'Prefecture must be other than 1'
      end
 
    end



  end



end
