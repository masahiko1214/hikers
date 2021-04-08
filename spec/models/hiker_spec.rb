require 'rails_helper'

RSpec.describe Hiker, type: :model do
  
  before do
    @hiker = FactoryBot.build(:hiker)
  end

  describe 'ユーザー新規登録' do

   context '新規登録できるとき' do

    it 'nameとemail、passwordとpassword_confirmation、年齢、体重が存在すれば登録できる' do
      expect(@hiker).to be_valid
    end

    it 'nameが10文字以内であれば登録できる' do
      @hiker.name = 'masamasama'
      expect(@hiker).to be_valid
    end

    it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      @hiker.password = '123mmm'
      @hiker.password_confirmation = '123mmm'
      expect(@hiker).to be_valid

    end


    it 'パスワードは半角英数字がそれぞれあれば登録出来る' do
      @hiker.password = '123abc'
      @hiker.password_confirmation = '123abc'
      expect(@hiker).to be_valid
    end


   end

    

   context '新規登録できないとき' do
      it 'nameが空では登録できない' do
      @hiker.name = ''
      @hiker.valid?
      expect(@hiker.errors.full_messages).to include "Name can't be blank"
      end


      it 'emailが空では登録できない' do
      @hiker.email = ''  
      @hiker.valid?
      expect(@hiker.errors.full_messages).to include "Email can't be blank"
      end


      it 'emailに@が含まれていないと登録できないこと' do
        @hiker.email = 'test.com'
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include 'Email is invalid'
      end

      it '重複したemailが存在する場合登録できない' do
        @hiker.save
        another_hiker = FactoryBot.build(:hiker)
        another_hiker.valid?
        expect(another_hiker.errors.full_messages).to include('Email has already been taken')
      end

      it 'passwordが5文字以下では登録できない' do
        @hiker.password = 'm0m0m'
        @hiker.password_confirmation = 'm0m0m'
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @hiker.password = '000mmm'
        @hiker.password_confirmation = 'mmm000'
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it 'passwordが半角英字だけでは登録できない' do
        @hiker.password = 'aaaaaa'
        @hiker.password_confirmation = 'aaaaaa'
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include('Password is invalid')
      end

      it 'passwordが半角数字だけでは登録できない' do
        @hiker.password = '000000'
        @hiker.password_confirmation = '000000'
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include('Password is invalid')
      end

      it '年齢が空では登録できない' do
        @hiker.age = ''  
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include "Age can't be blank"
      end

      it '年齢が数字以外では登録できない' do
        @hiker.age = 'あああ'  
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include "Age is too short (minimum is 2 characters)", "Age is not a number"
      end


      it '体重が空では登録できない' do
        @hiker.weight = ''  
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include "Weight can't be blank"
      end

      it '体重が数字以外では登録できない' do
        @hiker.weight = 'あああ'  
        @hiker.valid?
        expect(@hiker.errors.full_messages).to include "Weight is too short (minimum is 2 characters)", "Weight is not a number"
      end

    end



  end



end


