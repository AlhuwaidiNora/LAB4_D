#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LINE_LENGTH 256

int main() {
    FILE *logFile, *filteredFile;
    char line[MAX_LINE_LENGTH];
    char code[10];
    int count = 0;

    logFile = fopen("simulation.log", "r");
    if (logFile == NULL) {
        perror("Error opening simulation.log");
        return 1;
    }

    filteredFile = fopen("filtered_log.txt", "w");
    if (filteredFile == NULL) {
        perror("Error opening filtered_log.txt");
        fclose(logFile);
        return 1;
    }

    printf("Enter the error or warning code to filter (e.g., E1201, W3335): ");
    scanf("%s", code);

    printf("\nLines containing code %s:\n", code);

    while (fgets(line, sizeof(line), logFile) != NULL) {
        if (strstr(line, code) != NULL) {
            printf("%s", line);
            fprintf(filteredFile, "%s", line);
            count++;
        }
    }

    fclose(logFile);
    fclose(filteredFile);

    printf("\nTotal occurrences of code %s: %d\n", code, count);

    return 0;
}

