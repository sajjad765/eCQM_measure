FactoryGirl.define do
  factory :product, class: Product do
    sequence(:name) { |i| "Product Name #{i}" }

    factory :product_no_name do
      name ''
    end

    factory :product_static_name do
      name 'Product Same Name'
    end

    factory :product_static_bundle do
      name 'Product Static Bundle'
      c1_test true
      c2_test true
      c3_test true
      c4_test true
      vendor
      measure_ids ['BE65090C-EB1F-11E7-8C3F-9A214CF093AE']
      association :bundle, :factory => :static_bundle
    end
  end
end
