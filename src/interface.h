#ifndef INTERFACE_H
#define INTERFACE_H

typedef struct {
    char name[100]; // Фамилия и инициалы
    int kurs;       // Курс
    int ses[5];     // Успеваемость (5 оценок)
} STUDENT;

// Прототип функции для обработки (Серверная часть)
void process_students(STUDENT stud[], int n);

#endif
