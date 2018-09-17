## 1. install docker

 

## 2. pull image
```
docker pull sugare/jupyterhub
```

## 3. run container
```
docker run --name jupyterhub -d -p 8000:8000 sugare/jupyterhub
```

## 4. add users
```
bash addusers user1 user2 user3
```

## 5. open Browser
```
http://ip:8000
```
