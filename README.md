# Rails Script Runner WIP

Introducing a valuable tool that facilitates the execution of rake tasks both prior to and subsequent to the migration process. For instance, when altering the nullable column of an existing table to `false`, updating all related records beforehand is required to avoid an exception. This is typically accomplished by accessing the terminal, initiating rails console, and manually modifying records. However, this process lacks accountability and a comprehensive log of changes. This gem overcomes this issue by generating a versioned file that is recorded in a registry, similar to `structure.sql`. With this gem, you can accurately track modifications, including who performed them, and execute them during deployment.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE.txt).
