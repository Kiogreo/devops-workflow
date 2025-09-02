# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
This is a simple Express.js application serving as a basic API boilerplate. The current implementation provides a minimal "Hello World" endpoint.

## Development Commands
- `npm start` - Start the application (runs `node src/main.js`)

## Architecture

### Core Structure
- **src/main.js** - Main application file with Express server setup and basic route
- **package.json** - Project dependencies and scripts
- **Dockerfile** - Container configuration for deployment

### Current Implementation
The application currently consists of:
- Single Express.js server listening on port 3000
- Basic GET endpoint at `/` returning "Hello World!"
- Uses `ghcr.io/kiogreo/container-registry` as base Docker image

## Environment Setup
Copy `.env.example` to `.env` and configure:
- `NODE_ENV` - Set to development or production
- `APP_NAME` - Application name
- `APP_PORT` - Port number (default: 3000)
- `APP_NAMESPACE` - Application namespace

## Deployment
The project includes:
- **Dockerfile** for containerization
- **GitHub Actions workflow** (`.github/workflows/production.yml`) for automated deployment to GitHub Container Registry
- Deployment triggers on pushes to `production` branch or version tags (`v*`)
- Images are pushed to `ghcr.io/{repository-name}`