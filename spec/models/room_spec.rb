require 'rails_helper'

RSpec.describe Room do
  describe "validations" do
    it "is invalid without a home_type" do
      room = Room.new(home_type: "")

      room.valid?
      expect(room.errors).to have_key(:home_type)
    end

    it "is invalid without a listing name" do
      room = Room.new(listing_name: nil)
      room.valid?
      expect(room.errors).to have_key(:listing_name)
    end

    it "is invalid with a listing name longer than 50 characters" do
      room = Room.new(listing_name: "a" * 51)
      room.valid?
      expect(room.errors).to have_key(:listing_name)
    end
  end

  describe "#bargain?" do
    it "returns true for a room that is cheaper than 30" do
      room = Room.new(price: 29)
      expect(room.bargain?).to eq(true)
    end

    it "returns false for a room that is more expensive than or equal to 30" do
      cheap_room = Room.new(price: 30)
      expensive_room = Room.new(price: 3_000)

      expect(cheap_room.bargain?).to eq(false)
      expect(expensive_room.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
    let(:room1) { create :room, price: 100 }
    let(:room2) { create :room, price: 200 }
    let(:room3) { create :room, price: 50 }

    it "returns a sorted array of rooms by prices" do
      expect(Room.order_by_price).to eq([room3, room1, room2])
    end
  end
















end
