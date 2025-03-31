# tests/test_main.py
import sys
import os
from app.main import add

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))


def test_add():
    assert add(2, 3) == 5
