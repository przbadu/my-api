class Import::ExpensesController < ApplicationController
  require 'csv'
  skip_before_action :authenticate_user!

  def create
    file = params[:file]
    data = []

    # import csv file
    CSV.foreach(file.path, headers: true) do |row|
      data << row.to_hash
    end

    render json: { headers: data[0].keys, data: data }
  end
end