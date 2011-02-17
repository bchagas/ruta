# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :organizer do |f|
  f.address "MyString"
  f.cep "12345678"
  f.city "MyString"
end
