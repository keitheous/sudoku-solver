require "spec_helper"

RSpec.describe Grid do
  describe ".initialize" do
    context "creating an instance with attributes" do
      grid_1 = Grid.new("x#_y#", nil, false)

      it "contains a name" do
        expect(grid_1.name).to eq("x#_y#")
      end

      it "contains an x position" do
        expect(grid_1.x_position ).to eq("x#")
      end

      it "contains an y position" do
        expect(grid_1.y_position ).to eq("y#")
      end

      it "contains a value" do
        expect(grid_1.value).to eq(nil)

      end

      it "contains a found boolean" do
        expect(grid_1.found).to eq(false)
      end

      it "contains an array of possibile_values" do
        expect(grid_1.possible_values.class).to eq(Array)
        expect(grid_1.possible_values).to eq(("1"..."10").to_a)
      end
    end
  end

  describe "update_grid" do
    context "eleminating 1 possible value" do
      grid_1 = Grid.new("x1_y2")
      grid_1.update_grid("3")

      it "found boolean remains false" do
        expect(grid_1.found).to eq(false)
      end

      it "removes value '3' from all possible values" do
        expect(grid_1.possible_values).to eq(["1", "2", "4", "5", "6", "7", "8", "9"])
      end

      it "has 8 other possible values remaining" do
        expect(grid_1.possible_values.size).to eq(8)
      end
    end

    context "eleminating 8 possible values (1 to 8)" do
      grid_2 = Grid.new("x2_y2")

      8.times do |idx|
        element = idx + 1
        grid_2.update_grid(element.to_s)
      end

      it "updates found boolean to true" do
        expect(grid_2.found).to eq(true)
      end

      it "has 1 remaining possible value, which is '9'" do
        expect(grid_2.possible_values).to eq(["9"])
        expect(grid_2.possible_values.size).to eq(1)
      end

      it "updates value attribute the remaining possible value, which is '9'" do
        expect(grid_2.value).to eq("9")
      end
    end
  end
end
