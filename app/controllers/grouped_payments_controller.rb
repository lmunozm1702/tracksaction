class GroupedPaymentsController < ApplicationController
  def new
    @grouped_payment = GroupedPayment.new
  end
end
