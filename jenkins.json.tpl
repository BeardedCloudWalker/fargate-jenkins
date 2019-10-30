[
    {
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/Jenkins",
          "awslogs-region": "${region}",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "entryPoint": null,
      "portMappings": [
        {
          "hostPort": ${app_port},
          "protocol": "tcp",
          "containerPort": ${app_port}
        }
      ],
      "cpu": ${fargate_cpu},
      "memory": ${fargate_memory},
      "environment": [],
      "mountPoints": [],
      "volumesFrom": [],
      "image": "${app_image}",
      "essential": true,
      "name": "${app_name}"
    }
]