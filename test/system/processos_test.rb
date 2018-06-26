require "application_system_test_case"

class ProcessosTest < ApplicationSystemTestCase
  setup do
    @processo = processos(:one)
  end

  test "visiting the index" do
    visit processos_url
    assert_selector "h1", text: "Processos"
  end

  test "creating a Processo" do
    visit processos_url
    click_on "New Processo"

    fill_in "Data", with: @processo.data
    fill_in "Data Receb", with: @processo.data_receb
    fill_in "Numero", with: @processo.numero
    fill_in "Solicitante", with: @processo.solicitante
    click_on "Create Processo"

    assert_text "Processo was successfully created"
    click_on "Back"
  end

  test "updating a Processo" do
    visit processos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @processo.data
    fill_in "Data Receb", with: @processo.data_receb
    fill_in "Numero", with: @processo.numero
    fill_in "Solicitante", with: @processo.solicitante
    click_on "Update Processo"

    assert_text "Processo was successfully updated"
    click_on "Back"
  end

  test "destroying a Processo" do
    visit processos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Processo was successfully destroyed"
  end
end
