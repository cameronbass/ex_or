defmodule ExOrTest do
  use ExUnit.Case, async: false
  alias ExOr.TestUser

  @test_user %TestUser{age: 15, name: "Steve"}

  describe "validate/2" do
    test "returns errors if a struct is not passed as first arg" do
      assert {:err, "Must pass struct"} = ExOr.validate("Not a struct", ["field_1", "field_2"])
    end

    test "returns errors if no opts(fields) are passed in" do
      assert {:err, "Must pass fields"} = ExOr.validate(@test_user, [])
    end

    test "returns true if conditions are met" do
      assert {:ok, @test_user, ["field_1", "field_2"]} = ExOr.validate(@test_user, ["field_1", "field_2"])
    end
  end
end
