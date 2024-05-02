# Use the official Ruby image from Docker Hub
FROM ruby:2.7

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile.lock ./app/

# Install dependencies using bundler
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose any necessary ports (e.g., for Rails applications)
EXPOSE 3000

# Define the command to run the application
CMD ["ruby", "run", "start"]
