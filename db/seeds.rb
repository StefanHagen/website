if Administrator.first.blank?
  Administrator.create(:name => "Stefan Hagen", :email => "stefan@stefanhagen.nl", :password => "stefan", :password_confirmation => "stefan")
end

if Setting.first.blank?
  Setting.create(:name => "Website title", :key => "website_title", :value => "Stefan Hagen")
end