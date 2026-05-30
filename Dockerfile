FROM node:18-alpine
WORKDIR /app 

COPY backend/package*.json ./backend/
RUN cd backend && npm install --omit=dev

COPY backend ./backend
COPY public ./public 

EXPOSE 5000

WORKDIR /app/backend

CMD["npm","start"]