require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "should create ticket" do
    visit tickets_url
    click_on "New ticket"

    fill_in "Claim date", with: @ticket.claim_date
    fill_in "Due date", with: @ticket.due_date
    fill_in "Incident", with: @ticket.incident_id
    fill_in "Priority", with: @ticket.priority
    fill_in "Status", with: @ticket.status
    fill_in "User administrator", with: @ticket.user_administrator_id
    fill_in "User executive", with: @ticket.user_executive_id
    fill_in "User normal", with: @ticket.user_normal_id
    fill_in "User supervisor", with: @ticket.user_supervisor_id
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "should update Ticket" do
    visit ticket_url(@ticket)
    click_on "Edit this ticket", match: :first

    fill_in "Claim date", with: @ticket.claim_date
    fill_in "Due date", with: @ticket.due_date
    fill_in "Incident", with: @ticket.incident_id
    fill_in "Priority", with: @ticket.priority
    fill_in "Status", with: @ticket.status
    fill_in "User administrator", with: @ticket.user_administrator_id
    fill_in "User executive", with: @ticket.user_executive_id
    fill_in "User normal", with: @ticket.user_normal_id
    fill_in "User supervisor", with: @ticket.user_supervisor_id
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket" do
    visit ticket_url(@ticket)
    click_on "Destroy this ticket", match: :first

    assert_text "Ticket was successfully destroyed"
  end
end
