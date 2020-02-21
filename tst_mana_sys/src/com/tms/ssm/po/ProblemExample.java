package com.tms.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class ProblemExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProblemExample() {
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

        public Criteria andProDetailIsNull() {
            addCriterion("pro_detail is null");
            return (Criteria) this;
        }

        public Criteria andProDetailIsNotNull() {
            addCriterion("pro_detail is not null");
            return (Criteria) this;
        }

        public Criteria andProDetailEqualTo(String value) {
            addCriterion("pro_detail =", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailNotEqualTo(String value) {
            addCriterion("pro_detail <>", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailGreaterThan(String value) {
            addCriterion("pro_detail >", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailGreaterThanOrEqualTo(String value) {
            addCriterion("pro_detail >=", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailLessThan(String value) {
            addCriterion("pro_detail <", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailLessThanOrEqualTo(String value) {
            addCriterion("pro_detail <=", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailLike(String value) {
            addCriterion("pro_detail like", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailNotLike(String value) {
            addCriterion("pro_detail not like", value, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailIn(List<String> values) {
            addCriterion("pro_detail in", values, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailNotIn(List<String> values) {
            addCriterion("pro_detail not in", values, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailBetween(String value1, String value2) {
            addCriterion("pro_detail between", value1, value2, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProDetailNotBetween(String value1, String value2) {
            addCriterion("pro_detail not between", value1, value2, "proDetail");
            return (Criteria) this;
        }

        public Criteria andProAnsnoIsNull() {
            addCriterion("pro_ansno is null");
            return (Criteria) this;
        }

        public Criteria andProAnsnoIsNotNull() {
            addCriterion("pro_ansno is not null");
            return (Criteria) this;
        }

        public Criteria andProAnsnoEqualTo(String value) {
            addCriterion("pro_ansno =", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoNotEqualTo(String value) {
            addCriterion("pro_ansno <>", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoGreaterThan(String value) {
            addCriterion("pro_ansno >", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoGreaterThanOrEqualTo(String value) {
            addCriterion("pro_ansno >=", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoLessThan(String value) {
            addCriterion("pro_ansno <", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoLessThanOrEqualTo(String value) {
            addCriterion("pro_ansno <=", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoLike(String value) {
            addCriterion("pro_ansno like", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoNotLike(String value) {
            addCriterion("pro_ansno not like", value, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoIn(List<String> values) {
            addCriterion("pro_ansno in", values, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoNotIn(List<String> values) {
            addCriterion("pro_ansno not in", values, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoBetween(String value1, String value2) {
            addCriterion("pro_ansno between", value1, value2, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProAnsnoNotBetween(String value1, String value2) {
            addCriterion("pro_ansno not between", value1, value2, "proAnsno");
            return (Criteria) this;
        }

        public Criteria andProKeywIsNull() {
            addCriterion("pro_keyw is null");
            return (Criteria) this;
        }

        public Criteria andProKeywIsNotNull() {
            addCriterion("pro_keyw is not null");
            return (Criteria) this;
        }

        public Criteria andProKeywEqualTo(String value) {
            addCriterion("pro_keyw =", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywNotEqualTo(String value) {
            addCriterion("pro_keyw <>", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywGreaterThan(String value) {
            addCriterion("pro_keyw >", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywGreaterThanOrEqualTo(String value) {
            addCriterion("pro_keyw >=", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywLessThan(String value) {
            addCriterion("pro_keyw <", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywLessThanOrEqualTo(String value) {
            addCriterion("pro_keyw <=", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywLike(String value) {
            addCriterion("pro_keyw like", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywNotLike(String value) {
            addCriterion("pro_keyw not like", value, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywIn(List<String> values) {
            addCriterion("pro_keyw in", values, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywNotIn(List<String> values) {
            addCriterion("pro_keyw not in", values, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywBetween(String value1, String value2) {
            addCriterion("pro_keyw between", value1, value2, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProKeywNotBetween(String value1, String value2) {
            addCriterion("pro_keyw not between", value1, value2, "proKeyw");
            return (Criteria) this;
        }

        public Criteria andProDifIsNull() {
            addCriterion("pro_dif is null");
            return (Criteria) this;
        }

        public Criteria andProDifIsNotNull() {
            addCriterion("pro_dif is not null");
            return (Criteria) this;
        }

        public Criteria andProDifEqualTo(Integer value) {
            addCriterion("pro_dif =", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifNotEqualTo(Integer value) {
            addCriterion("pro_dif <>", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifGreaterThan(Integer value) {
            addCriterion("pro_dif >", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifGreaterThanOrEqualTo(Integer value) {
            addCriterion("pro_dif >=", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifLessThan(Integer value) {
            addCriterion("pro_dif <", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifLessThanOrEqualTo(Integer value) {
            addCriterion("pro_dif <=", value, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifIn(List<Integer> values) {
            addCriterion("pro_dif in", values, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifNotIn(List<Integer> values) {
            addCriterion("pro_dif not in", values, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifBetween(Integer value1, Integer value2) {
            addCriterion("pro_dif between", value1, value2, "proDif");
            return (Criteria) this;
        }

        public Criteria andProDifNotBetween(Integer value1, Integer value2) {
            addCriterion("pro_dif not between", value1, value2, "proDif");
            return (Criteria) this;
        }

        public Criteria andChaNoIsNull() {
            addCriterion("cha_no is null");
            return (Criteria) this;
        }

        public Criteria andChaNoIsNotNull() {
            addCriterion("cha_no is not null");
            return (Criteria) this;
        }

        public Criteria andChaNoEqualTo(String value) {
            addCriterion("cha_no =", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoNotEqualTo(String value) {
            addCriterion("cha_no <>", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoGreaterThan(String value) {
            addCriterion("cha_no >", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoGreaterThanOrEqualTo(String value) {
            addCriterion("cha_no >=", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoLessThan(String value) {
            addCriterion("cha_no <", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoLessThanOrEqualTo(String value) {
            addCriterion("cha_no <=", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoLike(String value) {
            addCriterion("cha_no like", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoNotLike(String value) {
            addCriterion("cha_no not like", value, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoIn(List<String> values) {
            addCriterion("cha_no in", values, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoNotIn(List<String> values) {
            addCriterion("cha_no not in", values, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoBetween(String value1, String value2) {
            addCriterion("cha_no between", value1, value2, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaNoNotBetween(String value1, String value2) {
            addCriterion("cha_no not between", value1, value2, "chaNo");
            return (Criteria) this;
        }

        public Criteria andChaTitleIsNull() {
            addCriterion("cha_title is null");
            return (Criteria) this;
        }

        public Criteria andChaTitleIsNotNull() {
            addCriterion("cha_title is not null");
            return (Criteria) this;
        }

        public Criteria andChaTitleEqualTo(String value) {
            addCriterion("cha_title =", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleNotEqualTo(String value) {
            addCriterion("cha_title <>", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleGreaterThan(String value) {
            addCriterion("cha_title >", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleGreaterThanOrEqualTo(String value) {
            addCriterion("cha_title >=", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleLessThan(String value) {
            addCriterion("cha_title <", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleLessThanOrEqualTo(String value) {
            addCriterion("cha_title <=", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleLike(String value) {
            addCriterion("cha_title like", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleNotLike(String value) {
            addCriterion("cha_title not like", value, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleIn(List<String> values) {
            addCriterion("cha_title in", values, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleNotIn(List<String> values) {
            addCriterion("cha_title not in", values, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleBetween(String value1, String value2) {
            addCriterion("cha_title between", value1, value2, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaTitleNotBetween(String value1, String value2) {
            addCriterion("cha_title not between", value1, value2, "chaTitle");
            return (Criteria) this;
        }

        public Criteria andChaMpointIsNull() {
            addCriterion("cha_mpoint is null");
            return (Criteria) this;
        }

        public Criteria andChaMpointIsNotNull() {
            addCriterion("cha_mpoint is not null");
            return (Criteria) this;
        }

        public Criteria andChaMpointEqualTo(String value) {
            addCriterion("cha_mpoint =", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointNotEqualTo(String value) {
            addCriterion("cha_mpoint <>", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointGreaterThan(String value) {
            addCriterion("cha_mpoint >", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointGreaterThanOrEqualTo(String value) {
            addCriterion("cha_mpoint >=", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointLessThan(String value) {
            addCriterion("cha_mpoint <", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointLessThanOrEqualTo(String value) {
            addCriterion("cha_mpoint <=", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointLike(String value) {
            addCriterion("cha_mpoint like", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointNotLike(String value) {
            addCriterion("cha_mpoint not like", value, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointIn(List<String> values) {
            addCriterion("cha_mpoint in", values, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointNotIn(List<String> values) {
            addCriterion("cha_mpoint not in", values, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointBetween(String value1, String value2) {
            addCriterion("cha_mpoint between", value1, value2, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andChaMpointNotBetween(String value1, String value2) {
            addCriterion("cha_mpoint not between", value1, value2, "chaMpoint");
            return (Criteria) this;
        }

        public Criteria andProTypeIsNull() {
            addCriterion("pro_type is null");
            return (Criteria) this;
        }

        public Criteria andProTypeIsNotNull() {
            addCriterion("pro_type is not null");
            return (Criteria) this;
        }

        public Criteria andProTypeEqualTo(String value) {
            addCriterion("pro_type =", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeNotEqualTo(String value) {
            addCriterion("pro_type <>", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeGreaterThan(String value) {
            addCriterion("pro_type >", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeGreaterThanOrEqualTo(String value) {
            addCriterion("pro_type >=", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeLessThan(String value) {
            addCriterion("pro_type <", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeLessThanOrEqualTo(String value) {
            addCriterion("pro_type <=", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeLike(String value) {
            addCriterion("pro_type like", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeNotLike(String value) {
            addCriterion("pro_type not like", value, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeIn(List<String> values) {
            addCriterion("pro_type in", values, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeNotIn(List<String> values) {
            addCriterion("pro_type not in", values, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeBetween(String value1, String value2) {
            addCriterion("pro_type between", value1, value2, "proType");
            return (Criteria) this;
        }

        public Criteria andProTypeNotBetween(String value1, String value2) {
            addCriterion("pro_type not between", value1, value2, "proType");
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