"""Functions to help Azara and Rui locate pirate treasure."""

from typing import Tuple, Union

# Defining types
AR = Tuple[str, ...]
RR = Tuple[str | AR, ...]
CR = Tuple[Union[str, AR], ...]



def get_coordinate(record: AR) -> str:
    """Return coordinate value from a tuple containing the treasure name,
    and treasure coordinate."""

    return record[1]


def convert_coordinate(coordinate: str) -> AR:
    """Split the given coordinate into tuple containing its individual components."""

    return tuple(coordinate)


def compare_records(
        a_r: AR,
        r_r: RR
    ) -> bool:
    """Compare two record types and determine if their coordinates match."""

    return convert_coordinate(get_coordinate(a_r)) == r_r[1]


def create_record(
        a_r: AR,
        r_r: RR
    ) -> str | CR:
    """Combine the two record types (if possible) and create a combined record group."""

    if compare_records(a_r, r_r):
        return a_r + r_r
    return 'not a match'


def clean_up(c_r: Tuple[CR]) -> str:
    """Clean up a combined record group into a multi-line string of single records."""

    report: str = ''
    for record in c_r:
        report += f'{record[:1] + record[2:]}\n'
    return report
