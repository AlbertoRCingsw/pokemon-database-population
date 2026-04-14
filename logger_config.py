import logging

# Create and configure the logger
LOG_FORMAT = "%(threadName)s -> %(filename)s %(levelname)s %(asctime)s - %(message)s"
logging.basicConfig(filename = "./pokemon.log", 
                    level = logging.INFO, 
                    format = LOG_FORMAT,
                    filemode = "w")
logger = logging.getLogger("pokemon_log")