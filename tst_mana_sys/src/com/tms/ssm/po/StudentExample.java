package com.tms.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class StudentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StudentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStuNoIsNull() {
            addCriterion("stu_no is null");
            return (Criteria) this;
        }

        public Criteria andStuNoIsNotNull() {
            addCriterion("stu_no is not null");
            return (Criteria) this;
        }

        public Criteria andStuNoEqualTo(String value) {
            addCriterion("stu_no =", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoNotEqualTo(String value) {
            addCriterion("stu_no <>", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoGreaterThan(String value) {
            addCriterion("stu_no >", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoGreaterThanOrEqualTo(String value) {
            addCriterion("stu_no >=", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoLessThan(String value) {
            addCriterion("stu_no <", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoLessThanOrEqualTo(String value) {
            addCriterion("stu_no <=", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoLike(String value) {
            addCriterion("stu_no like", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoNotLike(String value) {
            addCriterion("stu_no not like", value, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoIn(List<String> values) {
            addCriterion("stu_no in", values, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoNotIn(List<String> values) {
            addCriterion("stu_no not in", values, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoBetween(String value1, String value2) {
            addCriterion("stu_no between", value1, value2, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNoNotBetween(String value1, String value2) {
            addCriterion("stu_no not between", value1, value2, "stuNo");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNull() {
            addCriterion("stu_name is null");
            return (Criteria) this;
        }

        public Criteria andStuNameIsNotNull() {
            addCriterion("stu_name is not null");
            return (Criteria) this;
        }

        public Criteria andStuNameEqualTo(String value) {
            addCriterion("stu_name =", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotEqualTo(String value) {
            addCriterion("stu_name <>", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThan(String value) {
            addCriterion("stu_name >", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameGreaterThanOrEqualTo(String value) {
            addCriterion("stu_name >=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThan(String value) {
            addCriterion("stu_name <", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLessThanOrEqualTo(String value) {
            addCriterion("stu_name <=", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameLike(String value) {
            addCriterion("stu_name like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotLike(String value) {
            addCriterion("stu_name not like", value, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameIn(List<String> values) {
            addCriterion("stu_name in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotIn(List<String> values) {
            addCriterion("stu_name not in", values, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameBetween(String value1, String value2) {
            addCriterion("stu_name between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuNameNotBetween(String value1, String value2) {
            addCriterion("stu_name not between", value1, value2, "stuName");
            return (Criteria) this;
        }

        public Criteria andStuPwdIsNull() {
            addCriterion("stu_pwd is null");
            return (Criteria) this;
        }

        public Criteria andStuPwdIsNotNull() {
            addCriterion("stu_pwd is not null");
            return (Criteria) this;
        }

        public Criteria andStuPwdEqualTo(String value) {
            addCriterion("stu_pwd =", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdNotEqualTo(String value) {
            addCriterion("stu_pwd <>", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdGreaterThan(String value) {
            addCriterion("stu_pwd >", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdGreaterThanOrEqualTo(String value) {
            addCriterion("stu_pwd >=", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdLessThan(String value) {
            addCriterion("stu_pwd <", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdLessThanOrEqualTo(String value) {
            addCriterion("stu_pwd <=", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdLike(String value) {
            addCriterion("stu_pwd like", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdNotLike(String value) {
            addCriterion("stu_pwd not like", value, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdIn(List<String> values) {
            addCriterion("stu_pwd in", values, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdNotIn(List<String> values) {
            addCriterion("stu_pwd not in", values, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdBetween(String value1, String value2) {
            addCriterion("stu_pwd between", value1, value2, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuPwdNotBetween(String value1, String value2) {
            addCriterion("stu_pwd not between", value1, value2, "stuPwd");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineIsNull() {
            addCriterion("stu_discipline is null");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineIsNotNull() {
            addCriterion("stu_discipline is not null");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineEqualTo(String value) {
            addCriterion("stu_discipline =", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineNotEqualTo(String value) {
            addCriterion("stu_discipline <>", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineGreaterThan(String value) {
            addCriterion("stu_discipline >", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineGreaterThanOrEqualTo(String value) {
            addCriterion("stu_discipline >=", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineLessThan(String value) {
            addCriterion("stu_discipline <", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineLessThanOrEqualTo(String value) {
            addCriterion("stu_discipline <=", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineLike(String value) {
            addCriterion("stu_discipline like", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineNotLike(String value) {
            addCriterion("stu_discipline not like", value, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineIn(List<String> values) {
            addCriterion("stu_discipline in", values, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineNotIn(List<String> values) {
            addCriterion("stu_discipline not in", values, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineBetween(String value1, String value2) {
            addCriterion("stu_discipline between", value1, value2, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuDisciplineNotBetween(String value1, String value2) {
            addCriterion("stu_discipline not between", value1, value2, "stuDiscipline");
            return (Criteria) this;
        }

        public Criteria andStuGradeIsNull() {
            addCriterion("stu_grade is null");
            return (Criteria) this;
        }

        public Criteria andStuGradeIsNotNull() {
            addCriterion("stu_grade is not null");
            return (Criteria) this;
        }

        public Criteria andStuGradeEqualTo(String value) {
            addCriterion("stu_grade =", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeNotEqualTo(String value) {
            addCriterion("stu_grade <>", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeGreaterThan(String value) {
            addCriterion("stu_grade >", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeGreaterThanOrEqualTo(String value) {
            addCriterion("stu_grade >=", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeLessThan(String value) {
            addCriterion("stu_grade <", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeLessThanOrEqualTo(String value) {
            addCriterion("stu_grade <=", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeLike(String value) {
            addCriterion("stu_grade like", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeNotLike(String value) {
            addCriterion("stu_grade not like", value, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeIn(List<String> values) {
            addCriterion("stu_grade in", values, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeNotIn(List<String> values) {
            addCriterion("stu_grade not in", values, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeBetween(String value1, String value2) {
            addCriterion("stu_grade between", value1, value2, "stuGrade");
            return (Criteria) this;
        }

        public Criteria andStuGradeNotBetween(String value1, String value2) {
            addCriterion("stu_grade not between", value1, value2, "stuGrade");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}