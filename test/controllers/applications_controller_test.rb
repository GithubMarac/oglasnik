require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get applications_url
    assert_response :success
  end

  test "should get new" do
    get new_application_url
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post applications_url, params: { application: { adresa_boravišta: @application.adresa_boravišta, broj_telefona: @application.broj_telefona, datum_rođenja: @application.datum_rođenja, email: @application.email, ime: @application.ime, job_id: @application.job_id, prezime: @application.prezime, stručna_sprema: @application.stručna_sprema } }
    end

    assert_redirected_to application_url(Application.last)
  end

  test "should show application" do
    get application_url(@application)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_url(@application)
    assert_response :success
  end

  test "should update application" do
    patch application_url(@application), params: { application: { adresa_boravišta: @application.adresa_boravišta, broj_telefona: @application.broj_telefona, datum_rođenja: @application.datum_rođenja, email: @application.email, ime: @application.ime, job_id: @application.job_id, prezime: @application.prezime, stručna_sprema: @application.stručna_sprema } }
    assert_redirected_to application_url(@application)
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete application_url(@application)
    end

    assert_redirected_to applications_url
  end
end
