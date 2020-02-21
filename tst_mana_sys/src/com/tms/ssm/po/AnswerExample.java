package com.tms.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class AnswerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AnswerExample() {
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

        public Criteria andAnsNoIsNull() {
            addCriterion("ans_no is null");
            return (Criteria) this;
        }

        public Criteria andAnsNoIsNotNull() {
            addCriterion("ans_no is not null");
            return (Criteria) this;
        }

        public Criteria andAnsNoEqualTo(String value) {
            addCriterion("ans_no =", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoNotEqualTo(String value) {
            addCriterion("ans_no <>", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoGreaterThan(String value) {
            addCriterion("ans_no >", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoGreaterThanOrEqualTo(String value) {
            addCriterion("ans_no >=", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoLessThan(String value) {
            addCriterion("ans_no <", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoLessThanOrEqualTo(String value) {
            addCriterion("ans_no <=", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoLike(String value) {
            addCriterion("ans_no like", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoNotLike(String value) {
            addCriterion("ans_no not like", value, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoIn(List<String> values) {
            addCriterion("ans_no in", values, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoNotIn(List<String> values) {
            addCriterion("ans_no not in", values, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoBetween(String value1, String value2) {
            addCriterion("ans_no between", value1, value2, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsNoNotBetween(String value1, String value2) {
            addCriterion("ans_no not between", value1, value2, "ansNo");
            return (Criteria) this;
        }

        public Criteria andAnsDetailIsNull() {
            addCriterion("ans_detail is null");
            return (Criteria) this;
        }

        public Criteria andAnsDetailIsNotNull() {
            addCriterion("ans_detail is not null");
            return (Criteria) this;
        }

        public Criteria andAnsDetailEqualTo(String value) {
            addCriterion("ans_detail =", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailNotEqualTo(String value) {
            addCriterion("ans_detail <>", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailGreaterThan(String value) {
            addCriterion("ans_detail >", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailGreaterThanOrEqualTo(String value) {
            addCriterion("ans_detail >=", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailLessThan(String value) {
            addCriterion("ans_detail <", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailLessThanOrEqualTo(String value) {
            addCriterion("ans_detail <=", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailLike(String value) {
            addCriterion("ans_detail like", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailNotLike(String value) {
            addCriterion("ans_detail not like", value, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailIn(List<String> values) {
            addCriterion("ans_detail in", values, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailNotIn(List<String> values) {
            addCriterion("ans_detail not in", values, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailBetween(String value1, String value2) {
            addCriterion("ans_detail between", value1, value2, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andAnsDetailNotBetween(String value1, String value2) {
            addCriterion("ans_detail not between", value1, value2, "ansDetail");
            return (Criteria) this;
        }

        public Criteria andProNoIsNull() {
            addCriterion("pro_no is null");
            return (Criteria) this;
        }

        public Criteria andProNoIsNotNull() {
            addCriterion("pro_no is not null");
            return (Criteria) this;
        }

        public Criteria andProNoEqualTo(String value) {
            addCriterion("pro_no =", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoNotEqualTo(String value) {
            addCriterion("pro_no <>", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoGreaterThan(String value) {
            addCriterion("pro_no >", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoGreaterThanOrEqualTo(String value) {
            addCriterion("pro_no >=", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoLessThan(String value) {
            addCriterion("pro_no <", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoLessThanOrEqualTo(String value) {
            addCriterion("pro_no <=", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoLike(String value) {
            addCriterion("pro_no like", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoNotLike(String value) {
            addCriterion("pro_no not like", value, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoIn(List<String> values) {
            addCriterion("pro_no in", values, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoNotIn(List<String> values) {
            addCriterion("pro_no not in", values, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoBetween(String value1, String value2) {
            addCriterion("pro_no between", value1, value2, "proNo");
            return (Criteria) this;
        }

        public Criteria andProNoNotBetween(String value1, String value2) {
            addCriterion("pro_no not between", value1, value2, "proNo");
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