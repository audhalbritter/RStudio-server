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

### Edit setup

Edit setup, save.

Click the terminal where docker compose up is running.
Press Ctrl+C to stop it.
Run:

```bash
cd "/Users/audhalbritter/Documents/Research/OS_course/RStudio server"
docker compose down
docker compose up
```

### Resetting between teaching sessions (optional)
If you want a clean slate before each class without rebuilding:

```bash
docker compose down
rm -rf rstudio-data/*
docker compose up
```

That clears cloned repos and any new session clutter, but keeps your Docker image (packages, Quarto, default options).