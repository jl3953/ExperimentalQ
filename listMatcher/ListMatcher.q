filename1: "./list1.txt";
filename2: "./list2.txt";

upd:{[file1;file2]
        content1: key each group each " " vs 'read0 hsym `$file1;
        content2: key each group each " " vs 'read0 hsym `$file2;

        processes1: `$'content1[; 0];
        pid1: parse each content1[; 2];
        table1: ([PID: pid1] PROCESSES_1: processes1);

        processes2: `$'content2[; 0];
        pid2: parse each content2[; 2];
        table2: ([PID: pid2] PROCESSES_2: processes2);

        table1,'table2
    }

show upd[filename1; filename2]
