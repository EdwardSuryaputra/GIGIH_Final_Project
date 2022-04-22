class Report < ApplicationRecord
  def revenue
    @report.collect { @report.total }.sum
  end
end