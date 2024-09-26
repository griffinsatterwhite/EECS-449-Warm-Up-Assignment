walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker interact_with_body_course {
    has course: str;

    can return_message with `root entry {
        report {
            "response": "Hello, you are currently enrolled in " + self.course + "!"
        };
    }
}

walker interact_with_query {
    has name: str;
    has query: str;

    can return_message with `root entry {
        report {
            "response": "Hello " + self.name + ", your question is: " + self.query + "?"
        };
    }
}
