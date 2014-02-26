if Administrator.first.blank?
  Administrator.create(:name => "Stefan Hagen", :email => "stefan@stefanhagen.nl", :password => "stefan", :password_confirmation => "stefan")
end
