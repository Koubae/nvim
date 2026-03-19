"""

@Credit: https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-blazingly-fast-with-the-core-vim-motions/


- gd        => go to definition | go to local declaration 
- gD        => go to global definition
- gf        => go to file of an import | go to file under cursor 

- Ctrl + O  => Previous position | Jump Back 
- Ctrl + i  => Forward position  | Jump Forth

"""

# word
[1, 2, 3, 4, 5], (1, 2, 3, 4, 5)

my_variable_example_0 = "12345_12345"

variable_example_1 = "abc"
variable_example_2 = "abc"
variable_example_3 = "abc"
variable_example_4 = "abc"

my_vars = (variable_example_1, variable_example_2, variable_example_3, variable_example_4)


# change by pressing c in normal mode
var_to_change = "abc"

# WORD 
[1,2,3,4,5], (1,2,3,4,5)

WORD_1 = "Iam_A_WORD(WORD)"
WORD_2 = "sum(2,3)"

# change word capitalization => https://stackoverflow.com/a/2946054/13903942
# quite useful cheat sheat
# ~         - flips char current selection 
# gU<motion>
# g+u+e     - uppercase all word 
# g+u+e     - lowercase all word 
varSomeConstant = "VAR_123"



def sum(x, y):
    return x + y

# word 
sum(2, 3)
# WORD 
sum(2,3)

# f (find next char) | F (find prev char)
def function(a, b, c) -> list: 
    return [1, 2]

# f{char} - next char | try f?
# F{char} - prev char | try Fa 
# t{char} - till char | stops before find that char
# T{char} - till char | stops before find that char (Backward)
# ; <- forward | , <- backward 
# f_;;; # <- goes next "_" then again next _ 3 times
# F_,,, # <- same as above but backward
find_char_practice = "aaaaaaabbbbbbbbccccc____????1111bbbbbTTTTTTTT_______((-294"


# Practice move quick vertically.
# - { : prev empty line   (Jumps Up)
# - } : next empty line   (Jumps Down) 
# - CTRL+d:     jumps down half page (visible)
# - CTRL+u;     jumps up   half page (visible)
"""


The quiet terminal glowed softly in the dark room,
while each keystroke felt more deliberate than before.
Practice turned simple movement into growing confidence,
and every command started to feel a little more natural.

A programmer learns not only by writing code,
but also by shaping the way their hands move.
Small habits become speed, precision, and control,
especially when repetition is done with intention.

With enough patience, even strange motions become familiar,
and the editor begins to feel like an extension of thought.
What first seemed awkward slowly becomes elegant,
one line, one jump, and one correction at a time.


"""

# ======================================================================
#                           Search Patterns 
# ======================================================================
# /{pattern}    - search forward  then <Enter>
# ?{pattern}    - search backward then <Enter>
# *             - search word under cursor
# #             - search word under cursor (backward)
# n             - Next Match 
# N             - Previous Match 

# The "?" simply means that it goes "backward" and so the n search "prev" and N "previous".
# I don't really see a benefit it (unless you prefer N to go Next rather than small n).. 
# Better stick on one way or the other... 
# This logic applies also for "*" and "#"... so always stick for /{pattern} and * or 
# vice versa ?{pattern} and # but not both...

# Fake Python code for Vim search practice
# Good search targets:
# /user
# /session
# /error
# /retry
# /token
# /cache
# /status
# /config
# /timeout
# /service
# /worker
# /queue
# /failed
# /success

DEFAULT_TIMEOUT = 30
DEFAULT_STATUS = "pending"
DEFAULT_RETRY = 3
DEFAULT_CONFIG = {"cache": True, "timeout": DEFAULT_TIMEOUT, "status": DEFAULT_STATUS}


class UserConfigService:
    def __init__(self):
        self.user_cache = {}
        self.session_cache = {}
        self.token_cache = {}
        self.status_cache = {}
        self.config_cache = {}
        self.error_cache = {}

    def load_user_config(self, user_id):
        config = self.config_cache.get(user_id)
        if not config:
            return {
                "user": user_id,
                "config": DEFAULT_CONFIG.copy(),
                "status": "config_loaded",
            }
        return {"user": user_id, "config": config, "status": "config_found"}

    def save_user_config(self, user_id, config):
        self.config_cache[user_id] = config
        self.status_cache[user_id] = "config_saved"
        return {"user": user_id, "config": config, "status": "config_saved"}

    def create_session(self, user_id, token):
        session = {
            "user": user_id,
            "token": token,
            "status": "active",
            "retry": 0,
            "timeout": DEFAULT_TIMEOUT,
        }
        self.user_cache[user_id] = session
        self.session_cache[user_id] = session
        self.token_cache[token] = session
        self.status_cache[user_id] = "session_created"
        return session

    def get_session(self, user_id):
        session = self.session_cache.get(user_id)
        if not session:
            error = f"session error for user {user_id}"
            self.error_cache[user_id] = error
            return {"error": error, "status": "missing_session"}
        return session

    def get_token_session(self, token):
        session = self.token_cache.get(token)
        if not session:
            return {"error": "token error", "status": "missing_token"}
        return session

    def update_status(self, user_id, status):
        self.status_cache[user_id] = status
        return {"user": user_id, "status": status}

    def clear_cache(self):
        self.user_cache.clear()
        self.session_cache.clear()
        self.token_cache.clear()
        self.status_cache.clear()
        self.config_cache.clear()
        self.error_cache.clear()
        return {"status": "cache_cleared"}

    def retry_session(self, user_id, retry_limit=DEFAULT_RETRY):
        last_error = None
        for retry in range(retry_limit):
            session = self.get_session(user_id)
            if "error" not in session:
                return {"status": "success", "session": session, "retry": retry}
            last_error = session["error"]
        return {"status": "failed", "error": last_error, "retry": retry_limit}

    def validate_token(self, token):
        session = self.get_token_session(token)
        if "error" in session:
            return {"status": "failed", "error": "invalid token"}
        if session["status"] != "active":
            return {"status": "failed", "error": "inactive session"}
        return {"status": "success", "token": token, "user": session["user"]}


class WorkerService:
    def __init__(self, service_name):
        self.service_name = service_name
        self.queue = []
        self.status = "idle"
        self.error_count = 0
        self.success_count = 0

    def push_queue(self, item):
        self.queue.append(item)
        return {"status": "queued", "queue_size": len(self.queue)}

    def pop_queue(self):
        if not self.queue:
            self.error_count += 1
            return {"status": "failed", "error": "queue empty"}
        item = self.queue.pop(0)
        self.success_count += 1
        return {"status": "success", "item": item}

    def worker_status(self):
        return {
            "service": self.service_name,
            "status": self.status,
            "queue": len(self.queue),
            "error": self.error_count,
            "success": self.success_count,
        }

    def run_worker(self, retry=2, timeout=10):
        self.status = "running"
        for retry_index in range(retry):
            result = self.pop_queue()
            if result["status"] == "success":
                self.status = "success"
                return {
                    "status": "success",
                    "retry": retry_index,
                    "timeout": timeout,
                }
        self.status = "failed"
        return {
            "status": "failed",
            "retry": retry,
            "timeout": timeout,
            "error": "worker failed after retry",
        }


def create_user(service, user_id, token):
    config_result = service.load_user_config(user_id)
    session = service.create_session(user_id, token)
    status = service.update_status(user_id, "user_created")
    return {
        "user": user_id,
        "token": token,
        "session": session,
        "config": config_result,
        "status": status,
    }


def process_user(service, worker, user_id, token):
    user_data = create_user(service, user_id, token)
    validate_result = service.validate_token(token)

    if validate_result["status"] == "failed":
        return {
            "user": user_id,
            "status": "failed",
            "error": "token validation failed",
        }

    worker.push_queue({"user": user_id, "token": token, "status": "queued"})
    worker_result = worker.run_worker(retry=3, timeout=15)

    if worker_result["status"] == "failed":
        retry_result = service.retry_session(user_id, retry_limit=2)
        return {
            "user": user_id,
            "status": "failed",
            "worker": worker_result,
            "retry": retry_result,
        }

    return {
        "user": user_id,
        "status": "success",
        "worker": worker_result,
        "session": user_data["session"],
    }


def print_status_report(user_id, status, service, worker):
    print(f"user={user_id} status={status}")
    print(f"service_status={service.status_cache.get(user_id, 'unknown')}")
    print(f"worker_status={worker.worker_status()['status']}")
    print(f"queue_status={worker.worker_status()['queue']}")
    print("-----")


def simulate_error_flow(service, user_id):
    missing_session = service.get_session(user_id)
    retry_result = service.retry_session(user_id, retry_limit=4)

    print("simulate_error_flow")
    print(f"user={user_id}")
    print(f"missing_session={missing_session}")
    print(f"retry_result={retry_result}")
    print("error error error")
    print("retry retry retry")
    print("status failed status failed")
    print("cache miss cache miss")
    print("session missing session missing")
    print("-----")


def simulate_success_flow(service, worker, user_id, token):
    result = process_user(service, worker, user_id, token)

    print("simulate_success_flow")
    print(f"user={user_id}")
    print(f"token={token}")
    print(f"result_status={result['status']}")
    print("success success success")
    print("status success status success")
    print("session active session active")
    print("queue processed queue processed")
    print("worker success worker success")
    print("-----")


def build_fake_data():
    fake_users = [
        ("user_001", "token_001"),
        ("user_002", "token_002"),
        ("user_003", "token_003"),
        ("user_004", "token_004"),
        ("user_005", "token_005"),
    ]

    fake_messages = [
        "user session status pending",
        "user session status active",
        "user session status failed",
        "token error retry required",
        "cache timeout error detected",
        "worker queue success event",
        "worker queue failed event",
        "config loaded for user service",
        "config timeout for worker service",
        "retry retry retry after error",
    ]

    return fake_users, fake_messages


def print_fake_messages(messages):
    for message in messages:
        print(message)


def audit_service_state(service):
    print("audit_service_state")
    print(f"user_cache={list(service.user_cache.keys())}")
    print(f"session_cache={list(service.session_cache.keys())}")
    print(f"token_cache={list(service.token_cache.keys())}")
    print(f"status_cache={service.status_cache}")
    print(f"config_cache={service.config_cache}")
    print(f"error_cache={service.error_cache}")
    print("status status status")
    print("token token token")
    print("config config config")
    print("cache cache cache")
    print("error error error")
    print("-----")


def audit_worker_state(worker):
    print("audit_worker_state")
    print(f"service={worker.service_name}")
    print(f"status={worker.status}")
    print(f"queue={worker.queue}")
    print(f"error={worker.error_count}")
    print(f"success={worker.success_count}")
    print("worker worker worker")
    print("queue queue queue")
    print("failed failed failed")
    print("success success success")
    print("timeout timeout timeout")
    print("-----")


def main():
    config_service = UserConfigService()
    auth_worker = WorkerService("auth_service_worker")
    sync_worker = WorkerService("sync_service_worker")

    fake_users, fake_messages = build_fake_data()

    print("starting main")
    print("service startup status pending")
    print("worker startup status pending")
    print("config startup status pending")
    print("-----")

    for user_id, token in fake_users[:3]:
        result = process_user(config_service, auth_worker, user_id, token)
        print_status_report(user_id, result["status"], config_service, auth_worker)

    simulate_error_flow(config_service, "user_missing")
    simulate_success_flow(config_service, sync_worker, "user_010", "token_010")

    print_fake_messages(fake_messages)
    audit_service_state(config_service)
    audit_worker_state(auth_worker)
    audit_worker_state(sync_worker)

    print("final status report")
    print("user status success")
    print("user status failed")
    print("session status active")
    print("session status missing")
    print("retry after error")
    print("retry after timeout")
    print("cache updated successfully")
    print("cache update failed")
    print("token validation success")
    print("token validation failed")
    print("queue processed successfully")
    print("queue processing failed")
    print("worker success status")
    print("worker failed status")
    print("config loaded successfully")
    print("config timeout error")
    print("service ready")
    print("service failed")
    print("service retry pending")


if __name__ == "__main__":
    main()
