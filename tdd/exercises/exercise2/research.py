
class ResearchSubjects:
    def __init__(self):
        self.__collection = {}

    def add(self, subject_to_add):
        assert subject_to_add.identifier not in self.__collection, f" Subject {subject_to_add.identifier} already exists"
        self.__collection[subject_to_add.identifier] = subject_to_add

    def find(self, identifier):
        if identifier not in self.__collection:
            return None
        return self.__collection[identifier]

    def remove(self, identifier):
        del self.__collection[identifier]

    def update(self, updated_subject):
        self.remove(updated_subject.identifier)
        self.add(updated_subject)


class ResearchSubject:
    def __init__(self, identifier, data):
        self.identifier = identifier
        self.data = data
