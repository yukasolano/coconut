package com.yukakyushima.coconuttasks.model;

import java.util.UUID;

public class Task {
    private UUID id;
    private String name;
    private boolean checked;

    public Task(UUID id, String name, boolean checked) {
        this.id = id;
        this.name = name;
        this.checked = checked;
    }

    public UUID getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isChecked() {
        return checked;
    }
}
