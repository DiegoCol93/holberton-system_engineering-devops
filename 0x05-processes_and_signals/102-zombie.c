#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
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
int main(void)
{
	pid_t zombie_id;
	int i;

	for (i = 0; i < 5; i++)
	{
		zombie_id = fork();
		if (zombie_id > 0)
		{
			printf("Zombie process created, PID: %d\n", zombie_id);
			sleep(1);
		}
		else
			exit(0);
	}
	infinite_while();
	return (0);
}
