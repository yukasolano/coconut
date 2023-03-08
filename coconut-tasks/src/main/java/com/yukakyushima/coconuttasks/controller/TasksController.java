package com.yukakyushima.coconuttasks.controller;

import com.yukakyushima.coconuttasks.controller.dto.TaskDto;
import com.yukakyushima.coconuttasks.repository.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/tasks")
public class TasksController {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping
    public List<TaskDto> getAll() {
        return taskRepository.findAll().stream().map(TaskDto::toDto).toList();
    }
}
