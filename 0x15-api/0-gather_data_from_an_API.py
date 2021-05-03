#!/usr/bin/python3
''' Fetches the progress of a TODO list from an employee given their id. '''
if __name__ == '__main__':
    from sys import argv as av
    from requests import get

    name_path = 'https://jsonplaceholder.typicode.com/users/{}'
    name = get(name_path.format(av[1])).json()['name']

    todo = get('https://jsonplaceholder.typicode.com/todos').json()
    task_count = 0
    task_total = 0
    task_str = ''

    for task in todo:
        if task['userId'] == int(av[1]):
            task_total = task_total + 1
            if task['completed'] is True:
                task_count = task_count + 1
                task_str += "\t" + task['title'] + "\n"

    print('Employee {} is done with tasks({}/{}):\n{}'.format(name, task_count,
                                                              task_total,
                                                              task_str),
          end='')
