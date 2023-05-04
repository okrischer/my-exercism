"""Functions for compiling dishes and ingredients for a catering company."""

from sets_categories_data import (VEGAN,
                                  VEGETARIAN,
                                  KETO,
                                  PALEO,
                                  OMNIVORE,
                                  ALCOHOLS,
                                  SPECIAL_INGREDIENTS)


def clean_ingredients(
        dish_name: str,
        dish_ingredients: list[str]
    ) -> tuple[str, set[str]]:
    """Remove duplicates from `dish_ingredients`."""

    return dish_name, set(dish_ingredients)


def check_drinks(
        drink_name: str,
        drink_ingredients: list[str]
    ) -> str:
    """Append "Cocktail" (alcohol)  or "Mocktail" (no alcohol) to `drink_name`,
    based on `drink_ingredients`."""

    kind = "Cocktail" if set(drink_ingredients) & ALCOHOLS else "Mocktail"
    return f"{drink_name} {kind}"


def categorize_dish(
        dish_name: str,
        dish_ingredients: list[str]
    ) -> str:
    """Categorize `dish_name` based on `dish_ingredients`."""

    names = "VEGAN", "VEGETARIAN", "KETO", "PALEO", "OMNIVORE"
    categories = VEGAN, VEGETARIAN, KETO, PALEO, OMNIVORE

    for name, category in zip(names, categories):
        if set(dish_ingredients) <= category:
            return f"{dish_name}: {name}"

    return f"{dish_name}: UNKNOWN"



def tag_special_ingredients(dish: tuple[str, list[str]]) -> tuple[str, set[str]]:
    """Compare `dish` ingredients to `SPECIAL_INGREDIENTS`."""

    return dish[0], set(dish[1]) & SPECIAL_INGREDIENTS


def compile_ingredients(dishes: list[set[str]]) -> set[str]:
    """Create a master list of ingredients."""

    return set.union(*dishes)


def separate_appetizers(
        dishes: list[str],
        appetizers: list[str]
    ) -> list[str]:
    """Determine which `dishes` are designated `appetizers` and remove them."""

    return list(set(dishes) - set(appetizers))


def singleton_ingredients(
        dishes: list[set[str]],
        intersection: set[str]
        ) -> set[str]:
    """Determine which `dishes` have a singleton ingredient
    (an ingredient that only appears once across dishes)."""

    return set.union(*dishes) - intersection
