global allergens = Dict(zip(["eggs", "peanuts", "shellfish", "strawberries",
                    "tomatoes", "chocolate", "pollen", "cats"], 0:7))

allergic_to(score, allergen) = (score >> allergens[allergen]) & 0b1 == 1

allergy_list(score) = Set(a for a in keys(allergens) if allergic_to(score, a))
