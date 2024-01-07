FROM node

WORKDIR /workspace

RUN npm i -g npm@latest

WORKDIR /code

COPY bin .

RUN npm i corepack

RUN corepack install -g pnpm@*

WORKDIR /code

COPY bin .

RUN npm i vite

# For doc purpose only
# RUN pnpm create vite <app_name> --template lit

CMD "pnpm run dev"