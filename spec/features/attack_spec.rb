feature 'attack' do

  scenario "attacking Player 2" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave has attacked Mittens'
  end

  scenario "reduce Player 2's HP by 10" do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens 60HP'
    expect(page).to have_content 'Mittens 50HP'
  end

end