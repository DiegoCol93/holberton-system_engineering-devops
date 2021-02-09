#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

int infinite_while(void);
/**
 * main       - Creates zombie child processes.
 *     _____   __  ______  ______  ______
 *    /\  __-./\ \/\  ___\/\  ___\/\  __ \
 *    \ \ \/\ \ \ \ \  __\\ \ \__ \ \ \/\ \
 *     \ \____-\ \_\ \_____\ \_____\ \_____\
 *      \/____/ \/_/\/_____/\/_____/\/_____/
 *     __      ______  ______  ______  ______
 *    /\ \    /\  __ \/\  == \/\  ___\/\___  \
 *    \ \ \___\ \ \/\ \ \  _-/\ \  __\\/_/  /__
 *     \ \_____\ \_____\ \_\   \ \_____\/\_____\
 *      \/_____/\/_____/\/_/    \/_____/\/_____/
 *                                    Feb - 2021
 */
void main(void)
{
	unsigned int pid = 0;
	int i = 0;

	for (i = 0; i < 5; i++)
	{
		pid = fork();
		if (pid == 0)
		{
			exit(1);
		}
		else
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		}
	}
	infinite_while();
}
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
