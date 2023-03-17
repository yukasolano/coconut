package com.yukakyushima.coconuttasks.repository;

import com.yukakyushima.coconuttasks.model.Task;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface TaskRepository extends JpaRepository<Task, UUID> {
}
