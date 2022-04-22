class ReportController < ApplicationController
  def index 
    @report = Order.where(:date => Date.today)
    @revenue = @report.collect{|report| report.total }.sum
  end
end