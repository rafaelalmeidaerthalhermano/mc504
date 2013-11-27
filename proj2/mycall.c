#include <linux/unistd.h>
#include <linux/linkage.h>
#include <linux/sched.h>

asmlinkage long sys_mycall(unsigned int pid)
{
    struct task_struct* p;
    for_each_process(p)
    {
        struct pid* id = task_pid(p);
        unsigned pid_number = id->numbers[0].nr;
        if (pid_number == pid)
            return p->state;
    }
    return -1;
}

