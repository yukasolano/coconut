package com.yukakyushima.coconuttasks.controller.dto;

import com.yukakyushima.coconuttasks.model.Task;

import java.util.UUID;

public class TaskInDto {

    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public Task toModel() {
        return new Task(UUID.randomUUID(), this.getName(), false);
    }
}
