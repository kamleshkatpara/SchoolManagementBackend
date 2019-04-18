'use strict';
const _ = require('underscore');

module.exports = function(StudentAssessments) {

    StudentAssessments.getStudentAssessments = function(cb) {

        StudentAssessments.getStudentAssessments = function (cb) {

            var ds = StudentAssessments.dataSource;

            var sql = `SELECT * from studentassessmentsview`;
    
            ds.connector.query(sql, null, function (err, studentassessments) {
    
                if (err) console.error(err);
    

                let StudentList = [];
                let new_arr = [];
                let i = 1;
                function getScore(std_data) {
                  let new_obj = {};
                  i++;
                  let total = 0;
                  std_data.forEach(std => {
                    let id = std.id;
                    total = total + std.score;
                    new_obj["student"] = std.student;
                    new_obj["volunteer"] = std.volunteer;
                    new_obj[std.assessment] = std.score;
                  });
				  new_obj["total"] = total;
                  new_arr.push((new_obj));
                  return new_arr;
                }
                
                let combine = _.groupBy(studentassessments, "student");
                let Ids = _.uniq(_.pluck(studentassessments, "student"));
                
                Ids.forEach(id => {
                  let result = {};
                  let newData = combine[id];
                   getScore(newData);
                })
                cb(err, new_arr);
    
            });
    
        };
    }

    
    StudentAssessments.getStudentReports = function(cb) {

        StudentAssessments.getStudentReports = function (cb) {

            var ds = StudentAssessments.dataSource;
            var sql = `SELECT students.NAME AS studentname,
            assessments.NAME as assessmentname,
            volunteers.NAME AS volunteername,
            student_assessments.score AS score,
            student_assessments.assessment_date AS assessment_date
            FROM student_assessments
            LEFT JOIN students ON student_assessments.student_id = students.id
            LEFT JOIN assessments ON student_assessments.assessment_id = assessments.id
            LEFT JOIN volunteers ON student_assessments.volunteer_id = volunteers.id`;
    
            ds.connector.query(sql, null, function (err, studentreports) {
    
                if (err) console.error(err);
    
                cb(err, studentreports);
    
            });
    
        };
    }


    StudentAssessments.remoteMethod('getStudentAssessments', {
        returns: { arg: 'getStudentAssessments', type: 'object', root: true },
        http: { path: '/getStudentAssessments', verb: 'get' }
    });


    StudentAssessments.remoteMethod('getStudentReports', {
        returns: { arg: 'getStudentReports', type: 'object', root: true },
        http: { path: '/getStudentReports', verb: 'get' }
    });


};
