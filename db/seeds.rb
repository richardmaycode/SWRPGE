# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Characteristic.create(name: "Agility", description: "The Agility characteristics measures a character's manual dexterity, hand-eye coordination, and body control. Characters with a high Agility have a good sense of balance, flexibility, and deft hands. Agility is used for a number of physical skills such as Coordination, and is key to ranged combat skills such as Ranged (Light) and Ranged (Heavy).", abbreviation: "ag")
Characteristic.create(name: "Brawn", description: "A character's Brawn represents a blend of a character's brute power, strength, and overall toughness, as well as the ability to apply those attributes as needed. Characters with a high Brawn are physically fit and hardy, tend not to get sick often, and have strong constitutions. Brawn is used for a number of physical skills such as Athletics and Brawl. Brawn is also used to determine a character's starting wound threshold.", abbreviation: "br")
Characteristic.create(name: "Cunning", description: "Cunning reflects how crafty, devious, clever, and creative a character can be. Characters with a high Cunning are savvy, quickly pick up on social and environmental clues, and can more readily come up with short-term plans and tactics. Cunning is used for a number of mental skills, such as Deception, Perception, and Survival.", abbreviation: "cun")
Characteristic.create(name: "Intellect", description: "The Intellect characteristic measures a character's intelligence, education, mental acuity, and ability to reason and rationalize. Characters with a high Intellect can extrapolate or interpolate data, can recall details and draw from previous experience, and can think of long-term strategies and envision the ramifications of present actions. Intellect is used for a number of mental skills, such as Astrogation, Computers, and all the Knowledge skills, such as Lore and Xenology.", abbreviation: "int")
Characteristic.create(name: "Presence", description: "A character's Presence characteristic is a measure of his moxie, charisma, confidence, and force of personality. Characters with a high Presence make natural leaders, draw attention when they enter a room, can easily strike up a conversation with nearly anyone, and are quick to adapt to social situations. Presence is the key characteristic for interpersonal skills such as Charm and Leadership. </Description>", abbreviation: "pr")
Characteristic.create(name: "Willpower", description: "The Willpower characteristic reflects a character's discipline, self-control, mental fortitude, and faith. Characters with a high Willpower can withstand stress and fatigue, remain composed during chaotic situations, and exert influence over the weaker-willed. Willpower is used for a number of skills, such as Coercion and Vigilance. Willpower is also used to determine a character's starting strain threshold.", abbreviation: "wil")

Silhouette.create(size: 1, description: "Testing")
Silhouette.create(size: 2, description: "Testing")
Silhouette.create(size: 3, description: "Testing")
Silhouette.create(size: 4, description: "Testing")