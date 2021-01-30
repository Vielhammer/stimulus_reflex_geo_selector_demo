# frozen_string_literal: true

class GeoSelectorReflex < ApplicationReflex
  def select_region
    @region = session[:region_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_subregion
    @region = session[:region_id]
    @subregion = session[:subregion_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

  def select_country
    @region = session[:region_id]
    @subregion = session[:subregion_id]
    @country = session[:country_id] = element[:value].start_with?("Select a") ? nil : element[:value]
  end

end
