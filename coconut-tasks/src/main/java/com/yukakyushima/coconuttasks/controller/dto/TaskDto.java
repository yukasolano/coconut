package com.yukakyushima.coconuttasks.controller.dto;

import com.yukakyushima.coconuttasks.model.Task;
import java.util.UUID;

public class TaskDto {

    private String id;
    private String name;
    private boolean checked;

    public TaskDto(String id, String name, boolean checked) {
        this.id = id;
        this.name = name;
        this.checked = checked;
    }

    public TaskDto(String name) {
        this.id = UUID.randomUUID().toString();
        this.name = name;
        this.checked = false;
    }

    public static TaskDto toDto(Task task) {
        return new TaskDto(task.getId().toString(), task.getName(), task.isChecked());
    }


    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isChecked() {
        return checked;
    }
}
