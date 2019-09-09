import json
from PyInquirer import prompt
import re
import helper

def selectProject():
    projectsList = json.loads(helper.execCmd("gcloud projects list --format 'json'"))
    projectsNameList = map(lambda item: item["name"], projectsList)
    questions = [
        {
            'type': 'list',
            'name': 'name',
            'message': 'Please select your project',
            'choices': projectsNameList
        }
    ]
    answers = prompt(questions)
    projectsAnsId = list(filter(lambda item: item["name"] == answers["name"], projectsList))[0]["projectId"]
    helper.execCmd( "gcloud config set project {}".format(projectsAnsId))

def checkRule():
    rulesList = json.loads(helper.execCmd("gcloud compute firewall-rules list --format=json"))
    if list(filter(lambda item: item["name"] == "gaming-instance", rulesList)) == []:
        helper.execCmd("""
gcloud compute firewall-rules create gaming-instance \
    --direction=INGRESS \
    --priority=1000 \
    --network=default \
    --action=ALLOW \
    --rules=all \
    --source-ranges=0.0.0.0/0 \
    --target-tags=gaming-instance
""")

def createInstance():
    answers = dict()

    countryQuestions = [
        {
            'type': 'list',
            'name': 'country',
            'message': 'Please select your country',
            'choices': [
                "Taiwan",
                "Japan",
                "Singapore"
            ]
        }
    ]
    answers.update(prompt(countryQuestions))

    cpuQuestions = [
        {
            'type': 'list',
            'name': 'cpu',
            'message': 'Please select your cpu',
            'choices': [
                "8-cpu",
                "4-cpu"
            ]
        }
    ]
    cpuMapping = {
        "8-cpu": "n1-standard-8",
        "4-cpu": "n1-standard-4"
    }
    answers.update(cpuMapping[prompt(cpuQuestions)["cpu"]])

    if answers["country"] == "Taiwan":
        choices = [
            "asia-east1-a/nvidia-tesla-p100-vws",
            "asia-east1-c/nvidia-tesla-p100-vws",
            "asia-east1-c/nvidia-tesla-v100-vws"
        ]
    elif answers["country"] == "Japan":
        choices = [
            "asia-northeast1-a/nvidia-tesla-t4-vws"
        ]
    elif answers["country"] == "Singapore":
        choices = [
            "asia-southeast1-b/nvidia-tesla-p4-vws",
            "asia-southeast1-b/nvidia-tesla-p100-vws",
            "asia-southeast1-c/nvidia-tesla-v100-vws"
        ]
    gpuQuestions = [
        {
            'type': 'list',
            'name': 'gpu',
            'message': 'Please select your GPU',
            'choices': choices
        }
    ]
    gpuAnswers = re.search("(.+)/(.+)", prompt(gpuQuestions)["gpu"])
    answers["zone"] = gpuAnswers.group(1)
    answers["gpu"] = gpuAnswers.group(2)

    preemptibleQuestions = [
        {
            'type': 'list',
            'name': 'preemptible',
            'message': 'Are you want preemptible?',
            'choices': [
                "Yes",
                "No"
            ]
        }
    ]
    preemptibleAnswers = prompt(preemptibleQuestions)["preemptible"]
    if  preemptibleAnswers == "Yes":
        answers["preemptible"] = "--preemptible"
    elif preemptibleAnswers == "No":
        answers["preemptible"] = ""

    helper.execCmd("""
gcloud compute instances create gaming-instance \
    --zone={} \
    --machine-type={} \
    --maintenance-policy=TERMINATE \
    --accelerator=type={},count=1 \
    --tags=gaming-instance,http-server,https-server \
    --image=windows-server-2016-dc-v20190709 \
    --image-project=windows-cloud \
    --boot-disk-size=150GB \
    --boot-disk-type=pd-ssd \
    {} \
    --no-boot-disk-auto-delete \
    --metadata-from-file windows-startup-script-ps1=install_check.ps1
""".format(answers["zone"], answers["cpu"], answers["gpu"], answers["preemptible"]))

if __name__ == '__main__':
    selectProject()
    checkRule()
    createInstance()