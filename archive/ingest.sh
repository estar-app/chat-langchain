# Bash script to ingest data
# This involves scraping the data from the web and then cleaning up and putting in Weaviate.
!set -eu
wget -r -A.html https://langchain.readthedocs.io/en/latest/
python3 ingest.py
python3 ingest_examples.py
OPENAI_API_KEY='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'