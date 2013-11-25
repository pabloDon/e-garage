class HistoryRecordsController < ApplicationController
  def index
    if params[:commit]
      array_filter = {}
      array_filter[:car]= {}
      array_filter[:car][:plate] = params[:plate] if params[:plate]
      
      @records = HistoryRecord.joins(:car).where(cars: array_filter[:car])
    elsif params[:more]
    else
      @records = HistoryRecord.order("created_at ASC")
    end
  end
end
