xml.instruct!

xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  for announcement in @announcements
    duration = (announcement.ends_at - announcement.starts_at)
    xml.url do
      xml.loc url_for(:controller => "announcements", :action =>:show, :id => announcement.id, :only_path => false)
      xml.lastmod announcement.updated_at.to_date
      xml.priority "0.7"
      xml.changefreq  case
                      when duration > 6.months
                        "monthly"
                      when duration > 2.months
                        "weekly"
                      when duration > 2.weeks
                        "daily"
                      when duration > 2.days
                        "hourly"
                      end
    end
  end

end
