require "application_system_test_case"

class PickingOptionsTest < ApplicationSystemTestCase
  test "picking at random from a table" do
    visit new_character_url

    within "#character_origins_field" do
      click_on "Random"

      sleep 0.65; # max execution time for the slot machine
      selection = find "tr.selected"

      text, description = selection.find_all("td").map(&:text)
      assert_field "character_origins", with: text
    end
  end

  test "manually picking from a table" do
    visit new_character_url

    within "#character_origins_field" do
      selection = find "tr", text: /Western Europe/i
      selection.click

      text, description = selection.find_all("td").map(&:text)
      assert_field "character_origins", with: text
    end
  end

  test "lockable tables" do
    visit edit_character_url characters(:tengri)

    within_fieldset "role-lifepath" do
      lockable = find "#character_role_lifepath_partner_field"
      field    = find "input#character_role_lifepath_partner"

      # By default, all fields nothing is filled nor disabled
      assert field.value.blank?
      refute lockable.disabled?

      # Disabling the table prevents from picking from it
      within("label[for='character_role_lifepath_work_alone'] + div.field-boxes-list") do
        choose "Yes", allow_label_click: true
      end
      assert lockable[:class].include? "locked"

      lockable.find("tr", text: /Mentor/).click
      assert field.value.blank?

      # Enabling the table and picking from it
      within("label[for='character_role_lifepath_work_alone'] + div.field-boxes-list") do
        choose "No", allow_label_click: true
      end
      refute lockable[:class].include? "locked"

      lockable.find("tr", text: /Mentor/).click
      assert_equal "Mentor", field.value
    end
  end
end
