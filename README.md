# Typing Cars

A MultiversX blockchain-powered typing game where players can race cars by typing correctly.

## Project Structure

- `/frontend` - React frontend application with MultiversX SDK integration
- `/typing-cars` - MultiversX smart contract for the game logic

## Setup and Installation

### Frontend

```bash
cd frontend
npm install
npm start
```

### Smart Contract

```bash
cd typing-cars
sc-meta build
```

## Features

- MultiversX wallet integration (DeFi Wallet, Web Wallet, xPortal)
- Demo mode for testing without wallet
- Racing game based on typing speed and accuracy
- Blockchain integration for storing scores and achievements

## Development

This project uses:
- React with TypeScript
- MultiversX SDK for blockchain interaction
- Rust for smart contract development 