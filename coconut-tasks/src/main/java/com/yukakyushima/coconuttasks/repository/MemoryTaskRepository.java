package com.yukakyushima.coconuttasks.repository;

import com.yukakyushima.coconuttasks.model.Task;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Component
public class MemoryTaskRepository implements TaskRepository {

    private List<Task> tasks;

    public MemoryTaskRepository() {
        tasks = new ArrayList<>();
        tasks.add(new Task(UUID.randomUUID(), "Item 1", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 2", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 3", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 4", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 5", false));
        tasks.add(new Task(UUID.randomUUID(), "Item 6", false));
    }

    @Override
    public List<Task> getAll() {
        return tasks;
    }
}
