if Administrator.first.blank?
  Administrator.create(:name => "Stefan Hagen", :email => "stefan@stefanhagen.nl", :password => "stefan", :password_confirmation => "stefan")
end

30.times do
  Post.create(:title => "Malesuada Lorem Egestas Pellentesque Nullam", :body => "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Nulla vitae elit libero, a pharetra augue.")
end