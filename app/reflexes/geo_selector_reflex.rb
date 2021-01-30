# frozen_string_literal: true

class GeoSelectorReflex < ApplicationReflex
  def select_region
    @region = session[:group_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_subregion
    @region = session[:group_id]
    @subregion = session[:division_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_country
    @region = session[:group_id]
    @subregion = session[:division_id]
    @country = session[:business_line_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_unit
    @country = session[:business_line_id]
    @unit = session[:business_unit_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end
end