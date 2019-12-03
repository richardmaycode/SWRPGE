FactoryBot.define do
  factory :character_stat do
    brawn { 1 }
    agility { 1 }
    intellect { 1 }
    cunning { 1 }
    willpower { 1 }
    presence { 1 }
    wound_threshold { 1 }
    strain_threshold { 1 }
    experience { 1 }
    statable { association(:species) }
  end
end
