class PlansController < ApplicationController
  def index
    @q = Plan.ransack(params[:q])
    @plans = @q.result(:distinct => true).includes(:plan_owner).page(params[:page]).per(10)

    render("plan_templates/index.html.erb")
  end

  def show
    @plan = Plan.find(params.fetch("id_to_display"))

    render("plan_templates/show.html.erb")
  end

  def new_form
    @plan = Plan.new

    render("plan_templates/new_form.html.erb")
  end

  def create_row
    @plan = Plan.new

    @plan.plan_description = params.fetch("plan_description")
    @plan.plan_owner_id = params.fetch("plan_owner_id")
    @plan.coach_id = params.fetch("coach_id")

    if @plan.valid?
      @plan.save

      redirect_back(:fallback_location => "/plans", :notice => "Plan created successfully.")
    else
      render("plan_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @plan = Plan.find(params.fetch("prefill_with_id"))

    render("plan_templates/edit_form.html.erb")
  end

  def update_row
    @plan = Plan.find(params.fetch("id_to_modify"))

    @plan.plan_description = params.fetch("plan_description")
    @plan.plan_owner_id = params.fetch("plan_owner_id")
    @plan.coach_id = params.fetch("coach_id")

    if @plan.valid?
      @plan.save

      redirect_to("/plans/#{@plan.id}", :notice => "Plan updated successfully.")
    else
      render("plan_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @plan = Plan.find(params.fetch("id_to_remove"))

    @plan.destroy

    redirect_to("/plans", :notice => "Plan deleted successfully.")
  end
end
