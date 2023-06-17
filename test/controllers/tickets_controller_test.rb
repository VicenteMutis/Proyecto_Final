require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference("Ticket.count") do
      post tickets_url, params: { ticket: { claim_date: @ticket.claim_date, due_date: @ticket.due_date, incident_id: @ticket.incident_id, priority: @ticket.priority, status: @ticket.status, user_administrator_id: @ticket.user_administrator_id, user_executive_id: @ticket.user_executive_id, user_normal_id: @ticket.user_normal_id, user_supervisor_id: @ticket.user_supervisor_id } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { claim_date: @ticket.claim_date, due_date: @ticket.due_date, incident_id: @ticket.incident_id, priority: @ticket.priority, status: @ticket.status, user_administrator_id: @ticket.user_administrator_id, user_executive_id: @ticket.user_executive_id, user_normal_id: @ticket.user_normal_id, user_supervisor_id: @ticket.user_supervisor_id } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference("Ticket.count", -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
