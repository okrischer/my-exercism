"""Convert from and to roman numbers."""

def roman(number: int) -> str:
    """Convert decimal numbers to roman numbers."""

    if number >= 4000 or number <= 0:
        raise ValueError("Number must be between 1 and 3999")

    numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    romans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
    assert len(numbers) == len(romans)
    result: list[str] = []

    for i, num in enumerate(numbers):
        while number >= num:
            number -= num
            result.append(romans[i])

    return "".join(result)
