FactoryGirl.define do
  factory :playlist do
    sequence :name do |i|
      "playlist#{i}"
    end
  end
end
