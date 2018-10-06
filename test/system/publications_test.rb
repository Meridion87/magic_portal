require "application_system_test_case"

class PublicationsTest < ApplicationSystemTestCase
  setup do
    @publication = publications(:one)
  end

  test "visiting the index" do
    visit publications_url
    assert_selector "h1", text: "Publications"
  end

  test "creating a Publication" do
    visit publications_url
    click_on "New Publication"

    fill_in "Buys", with: @publication.buys_id
    fill_in "Cardid", with: @publication.cardid
    fill_in "Cardprice", with: @publication.cardprice
    fill_in "Cardquantity", with: @publication.cardquantity
    fill_in "Cards", with: @publication.cards_id
    fill_in "Commentary", with: @publication.commentary
    fill_in "Divisa", with: @publication.divisa
    fill_in "Mpid", with: @publication.mpid
    fill_in "Pubdate", with: @publication.pubdate
    fill_in "Selled", with: @publication.selled
    fill_in "Userid", with: @publication.userid
    click_on "Create Publication"

    assert_text "Publication was successfully created"
    click_on "Back"
  end

  test "updating a Publication" do
    visit publications_url
    click_on "Edit", match: :first

    fill_in "Buys", with: @publication.buys_id
    fill_in "Cardid", with: @publication.cardid
    fill_in "Cardprice", with: @publication.cardprice
    fill_in "Cardquantity", with: @publication.cardquantity
    fill_in "Cards", with: @publication.cards_id
    fill_in "Commentary", with: @publication.commentary
    fill_in "Divisa", with: @publication.divisa
    fill_in "Mpid", with: @publication.mpid
    fill_in "Pubdate", with: @publication.pubdate
    fill_in "Selled", with: @publication.selled
    fill_in "Userid", with: @publication.userid
    click_on "Update Publication"

    assert_text "Publication was successfully updated"
    click_on "Back"
  end

  test "destroying a Publication" do
    visit publications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Publication was successfully destroyed"
  end
end
