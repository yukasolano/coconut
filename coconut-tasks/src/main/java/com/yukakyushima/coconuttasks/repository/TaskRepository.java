package com.yukakyushima.coconuttasks.repository;

import com.yukakyushima.coconuttasks.model.Task;

import java.util.List;

public interface TaskRepository {

    List<Task> getAll();
}
