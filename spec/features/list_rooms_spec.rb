require 'rails_helper'

describe "Current user viewing the list of rooms" do
  let(:me)          { create(:user) }
  let!(:my_room_1)  { create(:room, user: me, listing_name: "cosy room 1") }
  let!(:my_room_2)  { create(:room, user: me, listing_name: "horrendous room 2") }

  let(:not_me)      { create(:user) }
  let!(:their_room) { create(:room, user: not_me, listing_name: "Not Mine")}

  before { login_as me }

  it "shows all their rooms" do
    visit rooms_url
    expect(page).to have_content("cosy room 1")
    expect(page).to have_content("horrendous room 2")
  end

  it "doesn't show another user's room" do
    visit rooms_url
    expect(page).to_not have_content("Not Mine")

  end







end
