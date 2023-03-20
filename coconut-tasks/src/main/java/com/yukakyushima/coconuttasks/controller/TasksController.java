package com.yukakyushima.coconuttasks.controller;

import com.yukakyushima.coconuttasks.controller.dto.TaskDto;
import com.yukakyushima.coconuttasks.controller.dto.TaskInDto;
import com.yukakyushima.coconuttasks.model.Task;
import com.yukakyushima.coconuttasks.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/tasks")
public class TasksController {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping
    public List<TaskDto> findAll() {
        return taskRepository.findAll().stream().map(TaskDto::toDto).toList();
    }

    @PostMapping
    public ResponseEntity<TaskDto> create(@RequestBody TaskInDto taskInDto) {
        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(TaskDto.toDto(taskRepository.save(taskInDto.toModel())));
    }

    @GetMapping("/sample")
    public List<TaskDto> sample() {
        List<Task> tasks = new ArrayList<>();
        tasks.add(new Task(UUID.randomUUID(), "Item 1", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 2", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 3", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 4", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 5", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 6", false));
        taskRepository.saveAll(tasks);
        return taskRepository.findAll().stream().map(TaskDto::toDto).toList();
    }
}
