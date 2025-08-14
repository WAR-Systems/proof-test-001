.PHONY: setup test proof bench clean

setup:
	@echo "Setting up environment..."
	pip install -U pip pytest
	pip install -r requirements.txt

test:
	@echo "Running tests..."
	pytest -q

proof:
	@echo "Running proof..."
	python -m proof.src.main

bench:
	@echo "Running benchmarks..."
	./bench/run.sh

clean:
	@echo "Cleaning up..."
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache