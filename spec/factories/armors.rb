FactoryBot.define do
  factory :armor do
    name { 'Heavy Clothing' }
    description { "A good leather jacket, technician's  jumpsuit, or thick woolen cloak won't stop much damage, but it's certainly better than nothing. Most characters living on the edge of the Empire favor heavy clothing for everyday wear." 
    }
    defense { 0 }
    encumbrance { 1 }
    hp { 0 }
    price { 50 }
    rarity { 1 }
    soak { 1 }
  end
end
