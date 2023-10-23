#!/usr/bin/python3
"""
Retrieve and display an employee's TODO list progress.

This script accepts an integer employee ID as a command-line
argument and displays the employee's TODO list progress.

Usage:
python3 my-script.py ID

Requirements:
- You must use urllib or requests module
- The script must accept an integer as a parameter, which
  is the employee ID
- The script must display on the standard output the employee
  TODO list progress in a specific format
- First line: Employee EMPLOYEE_NAME is done with
  tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS)
- EMPLOYEE_NAME: name of the employee
- NUMBER_OF_DONE_TASKS: number of completed tasks
- TOTAL_NUMBER_OF_TASKS: total number of tasks, which is the sum
  of completed and non-completed tasks
- Second and N next lines display the title of completed tasks:
  TASK_TITLE (with 1 tabulation and 1 space before the TASK_TITLE)
"""

import requests
import sys


def get_employee_todo_progress(employee_id):
    """Get and display an employee's TODO list progress."""
    # Make an HTTP GET request to the JSONPlaceholder API
    url = f'https://jsonplaceholder.typicode.com/todos?userId={employee_id}'
    response = requests.get(url)

    if response.status_code == 200:
        # Parse the JSON response
        todos = response.json()

        # Count the number of completed tasks
        completed_tasks = [todo for todo in todos if todo['completed']]
        completed = len(completed_tasks)
        total = len(todos)

        # Get the employee name
        user_url = f'https://jsonplaceholder.typicode.com/users/{employee_id}'
        user_info = requests.get(user_url).json()
        name = user_info.get('name', 'Unknown Employee')

        # Display the employee's TODO list progress
        pm = f"Employee {name} is done with tasks ({completed}/{total}):"
        print(pm)
        # Display the titles of completed tasks
        for task in completed_tasks:
            print(f"\t{task['title']}")
    else:
        print(f"Failed to fetch data. Status code: {response.status_code}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 my-script.py ID")
        sys.exit(1)

    try:
        employee_id = int(sys.argv[1])
        get_employee_todo_progress(employee_id)
    except ValueError:
        print("Invalid employee ID. Please provide a valid integer.")
        sys.exit(1)
