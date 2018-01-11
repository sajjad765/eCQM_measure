FactoryGirl.define do
  factory :value_set, class: HealthDataStandards::SVS::ValueSet do
    sequence(:display_name) { |i| "Value Set Name #{i}" }
    sequence(:oid) { |i| "1.#{i}.#{i + 1}.#{i + 2}" }
    sequence(:concepts) { |i| [{ 'code' => (i * (i + 1) * (i + 2)).to_s, 'code_system' => '2.16.840.1.113883.6.96', 'code_system_name' => 'SNOMED-CT' }] }
  end
end
