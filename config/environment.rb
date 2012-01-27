# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bng::Application.initialize!

ActiveSupport::Inflector.inflections do |inflection| 
  inflection.irregular "goose", "geese"
  inflection.irregular "mongoose", "mongeese"
  inflection.irregular "delicious", "delicious"
  inflection.irregular "muskoka", "muskoka"
  inflection.irregular "rule of law", "rules of law"
  inflection.irregular "proof of concept", "proofs of concept"
  inflection.irregular "pants", "pants"
  inflection.irregular "trousers", "trousers"
  inflection.irregular "lava", "lava"
  inflection.irregular "dolorous", "dolorous"
  inflection.irregular "jobless", "jobless"
  inflection.irregular "zeus", "zeus"
  inflection.irregular "asbestos", "asbestos"
  inflection.irregular "monarch", "monarchs"
end 


