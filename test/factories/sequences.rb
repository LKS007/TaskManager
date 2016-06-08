FactoryGirl.define do
  sequence :string do |n|
    "Title №#{n}"
  end

  sequence :mytext do |n|
    "Text №#{n}"
  end
end