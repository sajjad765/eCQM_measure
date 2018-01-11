FactoryGirl.define do
  factory :user, class: User do
    email 'test@mitre.org'
    password 'Cypre$$v3'
    terms_and_conditions '1'

    factory :admin_user do
      id '4def93dd4f85cf8968000010'
      email 'admin@mitre.org'
      password 'Cypre$$v3'
      terms_and_conditions '1'

      after(:create) do |user|
        create(:role, user_ids: [user._id], name: 'admin')
      end
    end

    factory :atl_user do
      id '4def93dd4f85cf8968000001'
      email 'atl@mitre.org'
      password 'Cypre$$v3'
      terms_and_conditions '1'

      after(:create) do |user|
        create(:role, user_ids: [user._id], name: 'atl')
      end
    end

    factory :user_user do
      id '4def93dd4f85cf8968000002'
      email 'user@mitre.org'
      password 'Cypre$$v3'
      terms_and_conditions '1'

      after(:create) do |user|
        create(:role, user_ids: [user._id], name: 'owner')
        create(:role, user_ids: [user._id], name: 'user')
      end
    end

    factory :vendor_user do
      id '4def93dd4f85cf8968000003'
      email 'vendor@mitre.org'
      password 'Cypre$$v3'
      terms_and_conditions '1'

      after(:create) do |user|
        create(:role, user_ids: [user._id], name: 'vendor')
      end
    end

    factory :other_user do
      id '4def93dd4f85cf8968000004'
      email 'other@mitre.org'
      password 'Cypre$$v3'
      terms_and_conditions '1'

      after(:create) do |user|
        create(:role, user_ids: [user._id], name: 'vendor')
      end
    end
  end
end
