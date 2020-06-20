require 'securerandom'

include FactoryBot::Syntax::Methods
FactoryBot.define do
  factory :admin do

  end

  factory :user do
    username
    email
    role
    password

    name { Faker::Name.name }
    lastname { Faker::Name.last_name }
    password { '123123123' } #SecureRandom.alphanumeric(8) }
    address { Faker::Address.street_address }
    gender { Faker::Gender.short_binary_type }
    age { rand(18..120) }
    email { "#{name.gsub(/\s+/, "")}.#{lastname.gsub(/\s+/, "")}@example.com".downcase }
    phone { rand(10**9..10**10).to_s }
  end
  factory :profile do
    name { Faker::Name.name Faker::Name.last_name}
    biography

    name { Faker::Name.name }
    lastname { Faker::Name.last_name }
    password { '123123123' } #SecureRandom.alphanumeric(8) }
    address { Faker::Address.street_address }
    gender { Faker::Gender.short_binary_type }
    age { rand(18..120) }

    email { "#{name.gsub(/\s+/, "")}@example.com".downcase }

    phone { rand(10**9..10**10).to_s }
  end

end
