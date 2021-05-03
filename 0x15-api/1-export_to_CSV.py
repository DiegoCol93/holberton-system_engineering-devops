#!/usr/bin/python3
''' Fetches the progress of a TODO list from an employee given their id. '''
if __name__ == '__main__':
    from sys import argv as av
    import csv
    from requests import get

    name_path = 'https://jsonplaceholder.typicode.com/users/{}'
    name = get(name_path.format(av[1])).json()['username']

    todo = get('https://jsonplaceholder.typicode.com/todos').json()

    with open('{}.csv'.format(av[1]), mode='w') as F:
        writer = csv.writer(F, quoting=csv.QUOTE_ALL)

        for task in todo:
            if task['userId'] == int(av[1]):
                writer.writerow([task['userId'], name, task['completed'],
                                 task['title']])
