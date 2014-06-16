require 'spec_helper'
require 'pry-byebug'

describe 'PigLatin' do

  it 'should check to see if word starts with a vowel' do
    expect(PigLatin.vowel_is_first("apple")).to eq(true)
  end

  it 'should be able to translate word starting with vowel' do
    expect(PigLatin.translate_with_vowel("apple")).to eq("appleway")
  end

  it 'should transform a word that starts with a consonant' do
    expect(PigLatin.transform("glove")).to eq("ovegl")
  end

  it 'should translate a word that starts with a consonant' do
    expect(PigLatin.translate_with_consonant("glove")).to eq("oveglay")
  end

  xit 'should be able to handle word that has "y"' do
    expect(PigLatin.checkY("yellow")).to eq("ellowyay")
    expect(PigLatin.checkY("rhythm")).to eq("ythmrhay")
  end

  it 'should be able to translate a phrase' do
    expect(PigLatin.translate("apple glove yellow rhythm")).to eq("appleway oveglay ellowyay ythmrhay")
  end

end