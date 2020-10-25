FactoryBot.define do
  factory :record do
    memo             {"aaaaaaaaaaaaaa"}
    title              {"todo"}
    record_day { "2000/01/01" }

      after(:build) do |item|
        item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
      end
  end
end

