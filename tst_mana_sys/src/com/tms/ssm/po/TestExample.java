package com.tms.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class TestExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TestExample() {
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

        public Criteria andTstNoIsNull() {
            addCriterion("tst_no is null");
            return (Criteria) this;
        }

        public Criteria andTstNoIsNotNull() {
            addCriterion("tst_no is not null");
            return (Criteria) this;
        }

        public Criteria andTstNoEqualTo(String value) {
            addCriterion("tst_no =", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoNotEqualTo(String value) {
            addCriterion("tst_no <>", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoGreaterThan(String value) {
            addCriterion("tst_no >", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoGreaterThanOrEqualTo(String value) {
            addCriterion("tst_no >=", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoLessThan(String value) {
            addCriterion("tst_no <", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoLessThanOrEqualTo(String value) {
            addCriterion("tst_no <=", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoLike(String value) {
            addCriterion("tst_no like", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoNotLike(String value) {
            addCriterion("tst_no not like", value, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoIn(List<String> values) {
            addCriterion("tst_no in", values, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoNotIn(List<String> values) {
            addCriterion("tst_no not in", values, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoBetween(String value1, String value2) {
            addCriterion("tst_no between", value1, value2, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNoNotBetween(String value1, String value2) {
            addCriterion("tst_no not between", value1, value2, "tstNo");
            return (Criteria) this;
        }

        public Criteria andTstNameIsNull() {
            addCriterion("tst_name is null");
            return (Criteria) this;
        }

        public Criteria andTstNameIsNotNull() {
            addCriterion("tst_name is not null");
            return (Criteria) this;
        }

        public Criteria andTstNameEqualTo(String value) {
            addCriterion("tst_name =", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameNotEqualTo(String value) {
            addCriterion("tst_name <>", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameGreaterThan(String value) {
            addCriterion("tst_name >", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameGreaterThanOrEqualTo(String value) {
            addCriterion("tst_name >=", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameLessThan(String value) {
            addCriterion("tst_name <", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameLessThanOrEqualTo(String value) {
            addCriterion("tst_name <=", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameLike(String value) {
            addCriterion("tst_name like", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameNotLike(String value) {
            addCriterion("tst_name not like", value, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameIn(List<String> values) {
            addCriterion("tst_name in", values, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameNotIn(List<String> values) {
            addCriterion("tst_name not in", values, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameBetween(String value1, String value2) {
            addCriterion("tst_name between", value1, value2, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstNameNotBetween(String value1, String value2) {
            addCriterion("tst_name not between", value1, value2, "tstName");
            return (Criteria) this;
        }

        public Criteria andTstTimeIsNull() {
            addCriterion("tst_time is null");
            return (Criteria) this;
        }

        public Criteria andTstTimeIsNotNull() {
            addCriterion("tst_time is not null");
            return (Criteria) this;
        }

        public Criteria andTstTimeEqualTo(String value) {
            addCriterion("tst_time =", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeNotEqualTo(String value) {
            addCriterion("tst_time <>", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeGreaterThan(String value) {
            addCriterion("tst_time >", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeGreaterThanOrEqualTo(String value) {
            addCriterion("tst_time >=", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeLessThan(String value) {
            addCriterion("tst_time <", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeLessThanOrEqualTo(String value) {
            addCriterion("tst_time <=", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeLike(String value) {
            addCriterion("tst_time like", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeNotLike(String value) {
            addCriterion("tst_time not like", value, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeIn(List<String> values) {
            addCriterion("tst_time in", values, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeNotIn(List<String> values) {
            addCriterion("tst_time not in", values, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeBetween(String value1, String value2) {
            addCriterion("tst_time between", value1, value2, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTimeNotBetween(String value1, String value2) {
            addCriterion("tst_time not between", value1, value2, "tstTime");
            return (Criteria) this;
        }

        public Criteria andTstTypeIsNull() {
            addCriterion("tst_type is null");
            return (Criteria) this;
        }

        public Criteria andTstTypeIsNotNull() {
            addCriterion("tst_type is not null");
            return (Criteria) this;
        }

        public Criteria andTstTypeEqualTo(String value) {
            addCriterion("tst_type =", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeNotEqualTo(String value) {
            addCriterion("tst_type <>", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeGreaterThan(String value) {
            addCriterion("tst_type >", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeGreaterThanOrEqualTo(String value) {
            addCriterion("tst_type >=", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeLessThan(String value) {
            addCriterion("tst_type <", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeLessThanOrEqualTo(String value) {
            addCriterion("tst_type <=", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeLike(String value) {
            addCriterion("tst_type like", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeNotLike(String value) {
            addCriterion("tst_type not like", value, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeIn(List<String> values) {
            addCriterion("tst_type in", values, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeNotIn(List<String> values) {
            addCriterion("tst_type not in", values, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeBetween(String value1, String value2) {
            addCriterion("tst_type between", value1, value2, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstTypeNotBetween(String value1, String value2) {
            addCriterion("tst_type not between", value1, value2, "tstType");
            return (Criteria) this;
        }

        public Criteria andTstDifIsNull() {
            addCriterion("tst_dif is null");
            return (Criteria) this;
        }

        public Criteria andTstDifIsNotNull() {
            addCriterion("tst_dif is not null");
            return (Criteria) this;
        }

        public Criteria andTstDifEqualTo(Integer value) {
            addCriterion("tst_dif =", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifNotEqualTo(Integer value) {
            addCriterion("tst_dif <>", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifGreaterThan(Integer value) {
            addCriterion("tst_dif >", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifGreaterThanOrEqualTo(Integer value) {
            addCriterion("tst_dif >=", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifLessThan(Integer value) {
            addCriterion("tst_dif <", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifLessThanOrEqualTo(Integer value) {
            addCriterion("tst_dif <=", value, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifIn(List<Integer> values) {
            addCriterion("tst_dif in", values, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifNotIn(List<Integer> values) {
            addCriterion("tst_dif not in", values, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifBetween(Integer value1, Integer value2) {
            addCriterion("tst_dif between", value1, value2, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstDifNotBetween(Integer value1, Integer value2) {
            addCriterion("tst_dif not between", value1, value2, "tstDif");
            return (Criteria) this;
        }

        public Criteria andTstNumIsNull() {
            addCriterion("tst_num is null");
            return (Criteria) this;
        }

        public Criteria andTstNumIsNotNull() {
            addCriterion("tst_num is not null");
            return (Criteria) this;
        }

        public Criteria andTstNumEqualTo(Integer value) {
            addCriterion("tst_num =", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumNotEqualTo(Integer value) {
            addCriterion("tst_num <>", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumGreaterThan(Integer value) {
            addCriterion("tst_num >", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("tst_num >=", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumLessThan(Integer value) {
            addCriterion("tst_num <", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumLessThanOrEqualTo(Integer value) {
            addCriterion("tst_num <=", value, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumIn(List<Integer> values) {
            addCriterion("tst_num in", values, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumNotIn(List<Integer> values) {
            addCriterion("tst_num not in", values, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumBetween(Integer value1, Integer value2) {
            addCriterion("tst_num between", value1, value2, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstNumNotBetween(Integer value1, Integer value2) {
            addCriterion("tst_num not between", value1, value2, "tstNum");
            return (Criteria) this;
        }

        public Criteria andTstScoreIsNull() {
            addCriterion("tst_score is null");
            return (Criteria) this;
        }

        public Criteria andTstScoreIsNotNull() {
            addCriterion("tst_score is not null");
            return (Criteria) this;
        }

        public Criteria andTstScoreEqualTo(Integer value) {
            addCriterion("tst_score =", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreNotEqualTo(Integer value) {
            addCriterion("tst_score <>", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreGreaterThan(Integer value) {
            addCriterion("tst_score >", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("tst_score >=", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreLessThan(Integer value) {
            addCriterion("tst_score <", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreLessThanOrEqualTo(Integer value) {
            addCriterion("tst_score <=", value, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreIn(List<Integer> values) {
            addCriterion("tst_score in", values, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreNotIn(List<Integer> values) {
            addCriterion("tst_score not in", values, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreBetween(Integer value1, Integer value2) {
            addCriterion("tst_score between", value1, value2, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstScoreNotBetween(Integer value1, Integer value2) {
            addCriterion("tst_score not between", value1, value2, "tstScore");
            return (Criteria) this;
        }

        public Criteria andTstDetailIsNull() {
            addCriterion("tst_detail is null");
            return (Criteria) this;
        }

        public Criteria andTstDetailIsNotNull() {
            addCriterion("tst_detail is not null");
            return (Criteria) this;
        }

        public Criteria andTstDetailEqualTo(String value) {
            addCriterion("tst_detail =", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailNotEqualTo(String value) {
            addCriterion("tst_detail <>", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailGreaterThan(String value) {
            addCriterion("tst_detail >", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailGreaterThanOrEqualTo(String value) {
            addCriterion("tst_detail >=", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailLessThan(String value) {
            addCriterion("tst_detail <", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailLessThanOrEqualTo(String value) {
            addCriterion("tst_detail <=", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailLike(String value) {
            addCriterion("tst_detail like", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailNotLike(String value) {
            addCriterion("tst_detail not like", value, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailIn(List<String> values) {
            addCriterion("tst_detail in", values, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailNotIn(List<String> values) {
            addCriterion("tst_detail not in", values, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailBetween(String value1, String value2) {
            addCriterion("tst_detail between", value1, value2, "tstDetail");
            return (Criteria) this;
        }

        public Criteria andTstDetailNotBetween(String value1, String value2) {
            addCriterion("tst_detail not between", value1, value2, "tstDetail");
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