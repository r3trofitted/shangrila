require "test_helper"

class SkillTest < ActiveSupport::TestCase
  test "new skill from a simple registry entry" do
    skill = Skill.from_list :accounting, :int

    assert_equal :accounting, skill.name
    assert_equal :int, skill.stat
    refute skill.basic?
    refute skill.costly?
    refute skill.group?
    assert_nil skill.parent
  end

  test "new basic skill from a registry entry" do
    skill = Skill.from_list :athletics, [:dex, :basic]

    assert_equal :athletics, skill.name
    assert_equal :dex, skill.stat
    assert skill.basic?
    refute skill.costly?
    refute skill.group?
    assert_nil skill.parent
  end

  test "new costly skill from a registry entry" do
    skill = Skill.from_list :autofire, [:ref, :costly]

    assert_equal :autofire, skill.name
    assert_equal :ref, skill.stat
    refute skill.basic?
    assert skill.costly?
    refute skill.group?
    assert_nil skill.parent
  end

  test "new group skill from a registry entry" do
    skill = Skill.from_list :language, [:int, :group]

    assert_equal :language, skill.name
    assert_equal :int, skill.stat
    refute skill.basic?
    refute skill.costly?
    assert skill.group?
    assert_nil skill.parent
  end

  test "serializing to DB" do
    skip
    skill = Skill.new name: :bribery, score: 6
    assert_equal "Bribery: 6", Skill.serialize(skill)

    specialty_skill = Skill.new name: :streetslang, parent: :language, score: 4
    assert_equal "Language (streetslang): 4", Skill.serialize(specialty_skill)
  end
end
