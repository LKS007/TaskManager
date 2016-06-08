FactoryGirl.define do
   factory :task do
     title { generate :string }
     text {generate :mytext }
   end
 end