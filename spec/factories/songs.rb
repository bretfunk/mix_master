FactoryGirl.define do
  factory :songs do
    sequence :title do |i|
      "song#{i}"
    end
  end
end
