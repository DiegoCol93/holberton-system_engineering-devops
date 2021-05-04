#!/usr/bin/python3
''' Fetches the progress of a TODO list from an employee given their id. '''
if __name__ == '__main__':
    from sys import argv as av
    from json import dump
    from requests import get

    name_path = 'https://jsonplaceholder.typicode.com/users/{}'
    name = get(name_path.format(av[1])).json()['username']

    todo = get('https://jsonplaceholder.typicode.com/todos').json()

    task_dict = {}
    task_dict[av[1]] = []

    for task in todo:
        if task['userId'] == int(av[1]):
            tmp_dict = {}
            tmp_dict['task'] = task['title']
            tmp_dict['completed'] = task['completed']
            tmp_dict['username'] = name
            task_dict[av[1]].append(tmp_dict)

    with open('{}.json'.format(av[1]), 'w') as F:
        dump(task_dict, F)
