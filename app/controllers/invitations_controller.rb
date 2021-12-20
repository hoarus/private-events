class InvitationsController < ApplicationController
  
  def index
    @appointments = Appointment.all
  end
  
  # GET /invitations/new
  def new
  end
 
   # GET /invitations/1/edit
  def edit
  end
 
  # POST /invitations or /invitations.json
  def create
    @invitation = Invitation.create(attendee: current_user, event_id: session[:current_event_id])
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  # Only allow a list of trusted parameters through.
  def invitation_params
    params.require(:invitation).permit(:attendee_id, :event_id)
  end
end
