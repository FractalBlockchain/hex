require "minitest/autorun"
require "hex"

class Hex::HexTest < Minitest::Test
  describe "#encode" do
    it "encodes strings into hex" do
      assert_equal "313233", Hex.encode("123")
    end

    it "returns empty string for empty string" do
      assert_equal "", Hex.encode("")
    end
  end

  describe "#decode" do
    it "decodes hex into string" do
      assert_equal "123", Hex.decode("313233")
    end

    it "raises exception if not receiving hex" do
      assert_raises Hex::EncodingError do
        Hex.decode("Z")
      end
    end

    it "returns empty string for empty string" do
      assert_equal "", Hex.decode("")
    end
  end
end
