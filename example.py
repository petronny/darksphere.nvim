import os
from functools import wraps
from typing import Callable

wrong_function()

def timer_decorator(func: Callable) -> Callable:
    """Decorator measuring function execution time"""
    @wraps(func)
    def wrapper(*args, **kwargs):
        import time
        start = time.perf_counter()
        result = func(*args, **kwargs)
        print(f"Time: {time.perf_counter() - start:.4f}s")
        return result
    return wrapper

def validate_numbers(func: Callable) -> Callable:
    """Decorator for parameter validation"""
    @wraps(func)
    def wrapper(_, nums: list[int|float]):
        if not all(isinstance(n, (int, float)) for n in nums):
            raise TypeError("Non-number detected")
        return func(_, nums)
    return wrapper

class Demo:
    @staticmethod
    def info() -> str:
        """Static method example"""
        return "Color Scheme: Neovim"

    @validate_numbers
    @timer_decorator
    def average(self, nums: list[int|float]) -> float:
        """Main method with chained decorators"""
        return round(sum(nums)/len(nums), 2) if nums else 0

# Usage
print(Demo().average([1, 2.5, 3]))  # Output: 2.17
