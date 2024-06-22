docker compose down

if [[ $1 = "down" ]]; then
  echo "exit"
  exit 0
elif [[ $1 = "build" ]]; then
  docker compose up -d --build
else
  docker compose up -d
fi

docker compose logs -f
