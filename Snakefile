import configparser
import yaml

PROJECT_DIR = config["all"]["project_dir"]
ASSEMBLY_DIR = PROJECT_DIR + "/assembly"
SAMPLE_IDS_FP = PROJECT_DIR + "/" + config["all"]["sample_id"]
FASTQ_DIR = PROJECT_DIR + "/" + config["all"]["fastq_dir"]

# create sample list
with open(SAMPLE_IDS_FP, "r") as f:
    lines = f.readlines()
SAMPLE_IDS = []
for line in lines:
    SAMPLE_IDS.append(line.split("\n")[0])

include: "rules/target.rules"
include: "rules/assembly.rules"

workdir: PROJECT_DIR

rule all:
    input: TARGET_ALL

onsuccess:
    print("Workflow finished, no error")
    shell("mail -s 'Workflow finished successfully' " + config["all"]["admin_email"] + " < {log}")

onerror:
    print("An error occurred")
    shell("mail -s 'An error occurred' " + config["all"]["admin_email"] + " < {log}")
