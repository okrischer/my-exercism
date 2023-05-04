"""Functions to keep track and alter inventory."""

from collections import Counter

Inventory = dict[str, int]
Items = list[str]


def create_inventory(items: Items) -> Counter[str]:
    """Create a dict that tracks the amount (count) of each element on the `items` list."""

    return Counter(items)


def add_items(
        inventory: Inventory,
        items: Items
    ) -> Counter[str]:
    """Add or increment items in inventory using elements from the items `list`."""

    return Counter(inventory) + create_inventory(items)


def decrement_items(
        inventory: Inventory,
        items: Items
    ) -> Inventory:
    """Decrement items in inventory using elements from the `items` list."""

    for item in items:
        if inventory[item] > 0:
            inventory[item] -= 1
    return inventory


def remove_item(
        inventory: Inventory,
        item: str
    ) -> Inventory:
    """Remove item from inventory if it matches `item` string."""

    inventory.pop(item, 0)
    return inventory


def list_inventory(inventory: Inventory) -> list[tuple[str, int]]:
    """Create a list containing all (item_name, item_count) pairs in inventory."""

    return [(key, value) for key, value in inventory.items() if value > 0]
