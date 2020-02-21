package com.tms.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class TeacherExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TeacherExample() {
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

        public Criteria andTeaNoIsNull() {
            addCriterion("tea_no is null");
            return (Criteria) this;
        }

        public Criteria andTeaNoIsNotNull() {
            addCriterion("tea_no is not null");
            return (Criteria) this;
        }

        public Criteria andTeaNoEqualTo(String value) {
            addCriterion("tea_no =", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoNotEqualTo(String value) {
            addCriterion("tea_no <>", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoGreaterThan(String value) {
            addCriterion("tea_no >", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoGreaterThanOrEqualTo(String value) {
            addCriterion("tea_no >=", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoLessThan(String value) {
            addCriterion("tea_no <", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoLessThanOrEqualTo(String value) {
            addCriterion("tea_no <=", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoLike(String value) {
            addCriterion("tea_no like", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoNotLike(String value) {
            addCriterion("tea_no not like", value, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoIn(List<String> values) {
            addCriterion("tea_no in", values, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoNotIn(List<String> values) {
            addCriterion("tea_no not in", values, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoBetween(String value1, String value2) {
            addCriterion("tea_no between", value1, value2, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaNoNotBetween(String value1, String value2) {
            addCriterion("tea_no not between", value1, value2, "teaNo");
            return (Criteria) this;
        }

        public Criteria andTeaPwdIsNull() {
            addCriterion("tea_pwd is null");
            return (Criteria) this;
        }

        public Criteria andTeaPwdIsNotNull() {
            addCriterion("tea_pwd is not null");
            return (Criteria) this;
        }

        public Criteria andTeaPwdEqualTo(String value) {
            addCriterion("tea_pwd =", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdNotEqualTo(String value) {
            addCriterion("tea_pwd <>", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdGreaterThan(String value) {
            addCriterion("tea_pwd >", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdGreaterThanOrEqualTo(String value) {
            addCriterion("tea_pwd >=", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdLessThan(String value) {
            addCriterion("tea_pwd <", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdLessThanOrEqualTo(String value) {
            addCriterion("tea_pwd <=", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdLike(String value) {
            addCriterion("tea_pwd like", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdNotLike(String value) {
            addCriterion("tea_pwd not like", value, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdIn(List<String> values) {
            addCriterion("tea_pwd in", values, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdNotIn(List<String> values) {
            addCriterion("tea_pwd not in", values, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdBetween(String value1, String value2) {
            addCriterion("tea_pwd between", value1, value2, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaPwdNotBetween(String value1, String value2) {
            addCriterion("tea_pwd not between", value1, value2, "teaPwd");
            return (Criteria) this;
        }

        public Criteria andTeaNameIsNull() {
            addCriterion("tea_name is null");
            return (Criteria) this;
        }

        public Criteria andTeaNameIsNotNull() {
            addCriterion("tea_name is not null");
            return (Criteria) this;
        }

        public Criteria andTeaNameEqualTo(String value) {
            addCriterion("tea_name =", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotEqualTo(String value) {
            addCriterion("tea_name <>", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameGreaterThan(String value) {
            addCriterion("tea_name >", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameGreaterThanOrEqualTo(String value) {
            addCriterion("tea_name >=", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLessThan(String value) {
            addCriterion("tea_name <", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLessThanOrEqualTo(String value) {
            addCriterion("tea_name <=", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameLike(String value) {
            addCriterion("tea_name like", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotLike(String value) {
            addCriterion("tea_name not like", value, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameIn(List<String> values) {
            addCriterion("tea_name in", values, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotIn(List<String> values) {
            addCriterion("tea_name not in", values, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameBetween(String value1, String value2) {
            addCriterion("tea_name between", value1, value2, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaNameNotBetween(String value1, String value2) {
            addCriterion("tea_name not between", value1, value2, "teaName");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineIsNull() {
            addCriterion("tea_discipline is null");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineIsNotNull() {
            addCriterion("tea_discipline is not null");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineEqualTo(String value) {
            addCriterion("tea_discipline =", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineNotEqualTo(String value) {
            addCriterion("tea_discipline <>", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineGreaterThan(String value) {
            addCriterion("tea_discipline >", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineGreaterThanOrEqualTo(String value) {
            addCriterion("tea_discipline >=", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineLessThan(String value) {
            addCriterion("tea_discipline <", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineLessThanOrEqualTo(String value) {
            addCriterion("tea_discipline <=", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineLike(String value) {
            addCriterion("tea_discipline like", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineNotLike(String value) {
            addCriterion("tea_discipline not like", value, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineIn(List<String> values) {
            addCriterion("tea_discipline in", values, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineNotIn(List<String> values) {
            addCriterion("tea_discipline not in", values, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineBetween(String value1, String value2) {
            addCriterion("tea_discipline between", value1, value2, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaDisciplineNotBetween(String value1, String value2) {
            addCriterion("tea_discipline not between", value1, value2, "teaDiscipline");
            return (Criteria) this;
        }

        public Criteria andTeaMailIsNull() {
            addCriterion("tea_mail is null");
            return (Criteria) this;
        }

        public Criteria andTeaMailIsNotNull() {
            addCriterion("tea_mail is not null");
            return (Criteria) this;
        }

        public Criteria andTeaMailEqualTo(String value) {
            addCriterion("tea_mail =", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailNotEqualTo(String value) {
            addCriterion("tea_mail <>", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailGreaterThan(String value) {
            addCriterion("tea_mail >", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailGreaterThanOrEqualTo(String value) {
            addCriterion("tea_mail >=", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailLessThan(String value) {
            addCriterion("tea_mail <", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailLessThanOrEqualTo(String value) {
            addCriterion("tea_mail <=", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailLike(String value) {
            addCriterion("tea_mail like", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailNotLike(String value) {
            addCriterion("tea_mail not like", value, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailIn(List<String> values) {
            addCriterion("tea_mail in", values, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailNotIn(List<String> values) {
            addCriterion("tea_mail not in", values, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailBetween(String value1, String value2) {
            addCriterion("tea_mail between", value1, value2, "teaMail");
            return (Criteria) this;
        }

        public Criteria andTeaMailNotBetween(String value1, String value2) {
            addCriterion("tea_mail not between", value1, value2, "teaMail");
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