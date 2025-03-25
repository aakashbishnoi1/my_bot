# Use a lightweight Linux image
FROM debian:latest  

# Set the working directory
WORKDIR /app

# Copy the binary and database file into the container
COPY takamura /app/takamura  
COPY database.sqlite /app/database.db  

# Ensure the bot binary is executable
RUN chmod +x /app/takamura  

# Start the bot
CMD ["/app/takamura"]

