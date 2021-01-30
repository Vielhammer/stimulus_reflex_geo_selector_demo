module PagesHelper
	def regions
    regions = Region.all
    regions.map(&:name).uniq.sort.select(&:present?)
  end

  def subregions(region)
    subregions = Subregion.all.select { |r| r.region.name == region }
    subregions.map(&:name).uniq.sort.select(&:present?)
  end

  def countries(region, subregion)
    countries = Country.all.select { |s| s.subregion.name == subregion }
    countries.map(&:name).uniq.sort.select(&:present?)
  end
end
