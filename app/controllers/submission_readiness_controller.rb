class SubmissionReadinessController < ApplicationController
  add_breadcrumb 'Submission Readiness Check', :src_path
  respond_to :html

  def show
    # get all of the vendors that the user can see
    @vendors = Vendor.accessible_by(current_user).order(:updated_at => :desc) # Vendor.accessible_by(current_user).all.order(:updated_at => :desc)
    respond_with(@vendors.to_a)
  end
end
