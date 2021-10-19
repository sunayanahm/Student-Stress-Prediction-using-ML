﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using educationalProject.DLTableAdapters;
using System.Data;

namespace educationalProject
{
    public class BLL
    {
        //common class which contains class members and functionalities

        tblAdminTableAdapter adminObj = new tblAdminTableAdapter();
        tblStudentsTableAdapter studentObj = new tblStudentsTableAdapter();
        tblQueriesTableAdapter queryObj = new tblQueriesTableAdapter();
        tblSolutionTableAdapter solutionObj = new tblSolutionTableAdapter();

        //admin login
        public bool CheckAdminLogin(string adminId, string pwd)
        {
            int cnt = int.Parse(adminObj.CheckAdminLogin(adminId, pwd).ToString());

            if (cnt == 1)

                return true;

            else

                return false;
        }

        //admin update password
        public void UpdateAdminPassword(string pwd, string adminId)
        {
            adminObj.UpdateAdminPassword(pwd, adminId);
        }

        //update stduent password
        public void UpdateStudentPassword(string pwd, string regNo)
        {
            studentObj.UpdateStudentPassword(pwd, regNo);
        }

        //get admin details
        public DataTable GetAdminById(string adminId)
        {
            return adminObj.GetAdminById(adminId);
        }


        //check student regNo
        public bool CheckStudentRegNo(string regNo)
        {
            int cnt = int.Parse(studentObj.CheckStudentRegNo(regNo).ToString());

            if (cnt == 1)

                return false;

            else

                return true;
        }

        //student login
        public bool CheckStudentLogin(string regNo, string pwd)
        {
            int cnt = int.Parse(studentObj.CheckStudentLogin(regNo, pwd).ToString());

            if (cnt == 1)

                return true;

            else

                return false;
        }

        //insert student
        public void InsertStudent(string regNo, string pwd, string name, string mobile,
            string emailId, string deptName, int sem)
        {
            studentObj.InsertStudent(regNo, pwd, name, mobile, emailId, deptName, sem);
        }

        //update student
        public void UpdateStudent(string regNo, string pwd, string name, string mobile,
           string emailId, string deptName, int sem)
        {
            studentObj.UpdateStudent(regNo, pwd, name, mobile, emailId, deptName, sem, regNo);
        }

        //delete student
        public void DeleteStudent(string regNo)
        {
            studentObj.DeleteStudent(regNo);
        }

        //get student by regNo
        public DataTable GetStudentById(string regNo)
        {
            return studentObj.GetStudentById(regNo);
        }

        //function to get all students
        public DataTable GetAllStudents()
        {
            return studentObj.GetData();
        }



        //function to retrive all queries
        public DataTable GetAllQueries()
        {
            return queryObj.GetData();
        }

        //function to retrive pending queries
        public DataTable GetNewQueries()
        {
            return queryObj.GetNewQueries();
        }

        //function to retrive answered queries
        public DataTable GetOldQueries()
        {
            return queryObj.GetOldQueries();
        }

        //function to get query by Id
        public DataTable GetQueryById(int id)
        {
            return queryObj.GetQueryById(id);
        }

        //function to insert new query
        public void InsertNewQuery(string regNo, string query, DateTime date)
        {
            queryObj.InsertQuery(regNo, query, date);
        }

        //function to send reply
        public void SendReply(string reply, DateTime date, int Id)
        {
            queryObj.SendReply(reply, date, Id);
        }

        //function to delete the student queries
        public void DeleteQueriesByRegNo(string regNo)
        {
            queryObj.DeleteQueriesByRegNo(regNo);
        }

        //function to get queries by regNo
        public DataTable GetQueriesByRegNo(string regNo)
        {
            return queryObj.GetQueriesByRegNo(regNo);
        }

        //function to retrive pending queries
        public DataTable GetNewQueriesByStudentId(string regNo)
        {
            return queryObj.GetNewQueriesByStudentId(regNo);
        }

        //function to retrive answered queries
        public DataTable GetOldQueriesByStudentId(string regNo)
        {
            return queryObj.GetOldQueriesByStudentId(regNo);
        }

        //function to check the outputs
        public bool CheckOutput(string regNo)
        {
            int cnt = int.Parse(solutionObj.CheckOutput(regNo).ToString());

            if (cnt == 1)

                return false;

            else

                return true;
        }

        //function to insert the student parameters and results
        public void InsertResult(string regNo, string gender, string financialissues, string familyissues, string studyHrs, string teachingMethod, string healthissues, string partialityfix, string exam,
            string friendissues, string pressure, string regular, string interaction, string result)
        {
            solutionObj.InsertResult(regNo, gender, financialissues, familyissues, studyHrs, teachingMethod, healthissues, partialityfix, exam, friendissues, pressure, regular, interaction, result);
        }

        //function to update the student parameters and results
        public void UpdateResult(string regNo, string gender, string financialissues, string familyissues, string studyHrs, string teachingMethod, string healthissues, string partialityfix, string exam,
            string friendissues, string pressure, string regular, string interaction, string result, int solutionId)
        {
            solutionObj.UpdateResult(regNo, gender, financialissues, familyissues, studyHrs, teachingMethod, healthissues, partialityfix, exam, friendissues, pressure, regular, interaction, result, solutionId);
        }

        //function to get details based on regNo
        public DataTable GetResultsByRegNo(string regNo)
        {
            return solutionObj.GetResultByRegNo(regNo);
        }

        //function to update the solution
        public void UpdateSolution(string solution, int solutionId)
        {
            solutionObj.UpdateSolution(solution, solutionId);
        }

        //function to delete the solution
        public void DeleteSolution(int solutionId)
        {
            solutionObj.DeleteSolution(solutionId);
        }

        //function to fetch all students parameters
        public DataTable GetAllStudentsResults()
        {
            return solutionObj.GetData();
        }

    }
}