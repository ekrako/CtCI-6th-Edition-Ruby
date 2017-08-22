require_relative('../Q1_04_Palindrome_Permutation')

describe 'detects if characters are palindrome permutation' do
  let(:word1) {"aba"}
  let(:word2) {"abcdabcd"}
  let(:word3) {"abc"}
  let(:word4) {"abcdabce"}

  it 'Should return true, since palindrome permute' do
    expect(planidromePermutation?(word1)).to eq(true)
  end

  it 'Should return true, since palindrome permute' do
    expect(planidromePermutation?(word2)).to eq(true)
  end

  it 'Should return false, since not palindrome permute' do
    expect(planidromePermutation?(word3)).to eq(false)
  end

  it 'Should return false, since not palindrome permute' do
    expect(planidromePermutation?(word4)).to eq(false)
  end
end
