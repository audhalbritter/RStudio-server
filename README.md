# RStudio Server (Browser)

Run RStudio in your browser using Docker.

## Setup

1. Start Docker.
2. In a terminal, navigate to this folder and run:

   ```bash
   docker compose up
   ```

3. Open a browser and go to [http://localhost:8787](http://localhost:8787).

The first time you run `docker compose up`, Docker will build the image. This can take a few minutes.

To stop the server, press `Ctrl+C` in the terminal where `docker compose up` is running.
