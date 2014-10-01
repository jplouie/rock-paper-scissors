require_relative './spec_helper.rb'

describe 'RockPaperScissors' do
  it 'results in a tie' do
    player_1 = {name: 'Bob', move: 'paper'}
    player_2 = {name: 'Mary', move: 'paper'}
    result = RockPaperScissors.play(player_1, player_2)
    expect(result).to eq(:tie)
  end

  it 'results in a win' do
    player_1 = {name: 'Bob', move: 'rock'}
    player_2 = {name: 'Mary', move: 'paper'}
    result = RockPaperScissors.play(player_1, player_2)
    expect(result).to eq('Mary')

    player_1 = {name: 'Bob', move: 'scissors'}
    player_2 = {name: 'Mary', move: 'paper'}
    result = RockPaperScissors.play(player_1, player_2)
    expect(result).to eq('Bob')
  end

  it 'returns false if input given is invalid' do
    player_1 = {name: 'Bob', move: 'nothing'}
    player_2 = {name: 'Mary', move: 'paper'}
    result = RockPaperScissors.play(player_1, player_2)
    expect(result).to be false
  end
end