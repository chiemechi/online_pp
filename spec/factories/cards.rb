FactoryBot.define do
  factory :card do
     memo             {"aaaaaaaaaaaaaa"}
      title              {"todo"}
      association :list

      after(:build) do |item|
        item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      end
  end
end

