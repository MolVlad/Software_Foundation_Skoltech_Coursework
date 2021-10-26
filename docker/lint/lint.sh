cd lint

pylint 3dmv/*.py prepare_data/*.py | tee lint/initial_summary.txt
yapf -i 3dmv/*.py prepare_data/*.py
pylint 3dmv/*.py prepare_data/*.py | tee lint/final_summary.txt

