require 'semantic_logger'

# Log everything to development.log
SemanticLogger.add_appender(file_name: 'development.log')

# Log everything except any messages from 'app' to summary.log
appender = SemanticLogger.add_appender(
  file_name: 'app.log',
  # Filter out log entries where the class name is 'MyClass'
  filter:    /MyClass/
)

logger = SemanticLogger['app']
logger.info "This will _only_ be logged to 'app.log'"