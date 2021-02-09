#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
/**
 * infinite_while - Starts an infinite loop.
 * Return: 0 never.
 */
int infinite_while(void)
{
	while (1)
		sleep(1);
	return (0);
}
/**
 * main       - Creates zombie child processes.
 * Return:    - 0 always
 */
int main(void)
{
	pid_t pid;
	int i;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid <= 0)
		{
			exit(0);
		}
		else
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		}
	}
	infinite_while();
	return (0);
}
