package com.example.jobPortal.repository;

import com.example.jobPortal.entity.Job;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobRepository extends JpaRepository<Job, Long> {
} 