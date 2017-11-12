FactoryGirl.define do
  factory :artist do
    name        { Faker::Name.name}
    image       "http//Is_this_link_working?"
  end
end
