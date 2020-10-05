require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Email poslodavca", with: @job.email_poslodavca
    fill_in "Istek oglasa", with: @job.istek_oglasa
    check "Istekao" if @job.istekao
    fill_in "Kategorija oglasa", with: @job.kategorija_oglasa
    fill_in "Naziv oglasa", with: @job.naziv_oglasa
    fill_in "Opis oglasa", with: @job.opis_oglasa
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Email poslodavca", with: @job.email_poslodavca
    fill_in "Istek oglasa", with: @job.istek_oglasa
    check "Istekao" if @job.istekao
    fill_in "Kategorija oglasa", with: @job.kategorija_oglasa
    fill_in "Naziv oglasa", with: @job.naziv_oglasa
    fill_in "Opis oglasa", with: @job.opis_oglasa
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
