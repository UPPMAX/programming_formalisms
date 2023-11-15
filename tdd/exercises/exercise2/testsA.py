import pytest

from research import ResearchSubject, ResearchSubjects

test_subject = ResearchSubject('123', 45.3)


def test_there_are_no_subjects_from_start():
    subjects = ResearchSubjects()
    assert subjects.collection == []


def test_add():
    subjects = ResearchSubjects()
    subjects.add(test_subject)
    stored_subject = next(iter(subjects.collection))
    assert stored_subject.identifier == test_subject.identifier
    assert stored_subject.data == test_subject.data


def test_can_not_add_already_existing_subject():
    subjects = ResearchSubjects()
    subjects.collection = [test_subject]
    with pytest.raises(AssertionError):
        subjects.add(test_subject)


def test_find():
    subjects = ResearchSubjects()
    subjects.collection = [test_subject]
    found = subjects.find(test_subject.identifier)
    assert found.identifier == test_subject.identifier
    assert found.data == test_subject.data


def test_find_return_none_if_subject_is_not_found():
    subjects = ResearchSubjects()
    found = subjects.find(test_subject.identifier)
    assert found is None


def test_remove():
    subjects = ResearchSubjects()
    subjects.collection = [test_subject]
    subjects.remove(test_subject.identifier)
    assert subjects.collection == []


def test_update():
    subjects = ResearchSubjects()
    subjects.collection = [test_subject]
    new_data = 66.2
    updated_subject = ResearchSubject(test_subject.identifier, new_data)
    subjects.update(updated_subject)
    stored = next(filter(lambda s: s.identifier == test_subject.identifier, subjects.collection))
    assert stored.identifier == test_subject.identifier
    assert stored.data == updated_subject.data
