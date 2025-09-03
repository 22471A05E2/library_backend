package com.nec.library.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nec.library.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
    Optional<Book> findByIsbn(String isbn);
}
