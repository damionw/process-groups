# process-groups - A reference counting process group supervisor

[Process Groups](https://github.com/damionw/process-groups) implements
a process group supervision model where the group of tasks is started
when there exist one or more external dependent processes and is stopped
when the number of dependent processes drops to zero.

This technique is useful for service starting on user login where the
user may be logged in via GUI and/or ssh, or where a set of services are
considered dependent on one or more others such as webservices depending
on a common DBMS.

This model does lend itself to chaining of services using reference counting
rather than explicit modality to manage availability. The groups of dependencies
can be managed in isolation using 'domains'

The help text, unittests, and included examples should provide good instruction
on how to use the tool

## License

process-groups is licensed under the terms of the GNU GPLv2 License. See the LICENSE file
for details.
