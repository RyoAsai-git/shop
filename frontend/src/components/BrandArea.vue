<template>
  <div>
    <div class="brand-area" v-show="!showContent">
      <img
        src="https://cld.fashionsnap.com/image/upload/asset/brand/images/2021/05/auraleelogo20210513-000.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARYAAACrCAMAAACUsENiAAAAgVBMVEX///8AAAD8/PwEBAT5+fkICAj29vbo6Ojz8/MLCwtYWFjQ0NASEhLl5eXw8PBPT090dHQdHR0mJiYtLS1iYmIhISEzMzMYGBg7OzuNjY1ISEjc3NyVlZVFRUWLi4vJycnU1NSDg4O3t7efn5+np6d6enpnZ2ewsLBvb29lZWXAwMAznEJoAAAHYElEQVR4nO2ZCZOjNhCFhSROY3zgA1/jc8aT+f8/MP1aYOPdTVUqlWyGqvfV1mALiXU/+hIYQwghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIeRbYAUcjNVvr6eeI2GWDrUr2rW++9zO6c8Lo4/rWvvDf/C96Sz51U+2vWNvwi/n/rzQ2h+vOxRZnnf3p/Hu7nb3u3OV7oCj7xzk4XTtGf/DZX274HfY9C/wDAj9+8spvTN/bVY/5PpXfA2i4WC9V9d4/dFPz3h4jPfdl58CzvpwaMftM7f0ptqf131bXn7pi9O3Q69nfpjeS7+9HPWY03PFTrB/9cf/h3Q54pElemdMkOe1uNjODXT0cYU20Twv2k72PcEGJEuSjsfjNB2nlX8ZtxlOjJPuhlfyNa2sDmN6mmbBTK9nMusrjEMFL3N0TOe217VZJWvS323eP8TuZ7PZXP+tmsltZxL1EGvS7Xy5XM9WVZtUzjJv9mHMYr2UD0s5t2o+R3CbYr1czs7mVC/X6/nFmOxSl8vZfH31+9l8OWsyo55yl0XrevR/G/w32URxBJyLotwt32wiwogl91jH8r23CYyfYk7h7QTDeeSwJo73pjKNfHZTeyzlEN1Nph9ctDD+jFnzcUjcN6wohyLLXkxwsFBtcdGhMh7K/CEiwfgmFVFEJsgSFcZOXJBElmDRPjFbrJyaUZDFHpexHJ2oYs8udq5OQ0G64vRQZLF7tfBwaGpxDRfn0VSzw3ithjsXX8QmD1lEvsKYCZwq324PNdwsnmWJCBVHkEUm51/VCiq5iRcpz7h2jXwiDnNzQ5JlE8ktrU8m2X0dYKiLj5kkl5vYMFtEeRR9WKSbzlv8BDHX2KRKNw72f9kDvCcEURRfG7lEHk0qFKY3rJ+noRANLYgQ/5X+8gX8PJ4iag7iKZMjDF6PLVr5d2QQ9RYXx7UW7rlY7W7mADd7D0HkyjyKJRJTTd1njHRBdMOX9UBk8Rvc4/lOfrq343UultbiLcdcZHnLGuSRq0HSneJj4Y2m3EZmJ7sZFD0iCYcggqgIqGgFJarEnJG15m1RvrkhecsGjr4aa/tlP+RLHp+MfZd8mh/NOzTYasEOshitRNHq+HW6bDFSjv0WNSp4S6TKLHe6HUAQwVukxMNfVJaheIt5QwGaj8Mjlz0ixd3Nbi3WNZXRKCqPicqiucVskX+ivAx1yp0tcouL+rLEV4k68ScJIrl2LddG83MT/8vzkUmG0Or6fegtxFmkdFzV1EuGY/wugbKCmVN40kOW1nj9my8Sk2xR3x+y6PjRa+/zrgFaZUjZ2R0alcfuidf3Rgq0y+M6RSObIf/Kb//SBBJ9oSxDpjpNen1L1HUtuSvPUnCCUA9ZUNTzVYWg9KhVkmg8IspcJVjd+miG8YRhgzuPTlT83heQYz0+ljCuKIpFg4422hvzLNDo/spi4iSY1jtJO/6Q94LITebojT8tVEb10iCS7YOFt7h89NxNf2eSjdTTXFuuxI5ytLYHSIVOtd0WRHHjX4PIHYz5xISFLHvNLYW5OAh3tSLFWTPNCOFp/R7eMtsN5KHLHiV1mUoN9ruVZtizmWMroNVWWr1QhTtZki0Eq221ExXKaCQ+sUXgTVtZLomWs7KUJZq3XHSWAi8aNZB5WfUehH5n9hr/x3R82i9z+LlLL7pJmuWzsixRsFFv+nuiKG8MGhkp4oVB869pObRzd5NUc6ixkr5lFONUfpe4qRa4UFTYx4Ob782bRku5XsuWRqPmagso9bbbncan3ajWm5z2gkjiTNo5M8oh0KUNq4csEm/YHTnZNBiPZkekOSwWcw3I+GjtMJLLviu2mkpctDFHWFDigZKUIrvQLHPXBwvxxIQitZKF9gPq1d5j8xhN/Uk7mTvi465XvEm/cghhGHocXHwoaCcKR9EmtJGqvEDxbTJ9COm1o3PxQVKs3HaR5aAtmpV0cVFL96ZBfv40R2wRZYuEJmWhKkt6ST9LeFes9Xz5hp3SMLgsimIyKSZSjqfXEZ5OvmPgpu27lCf/WUy2xcJfMWsjnSuO73iWaacycfFpNgc5Xk36IRdZnLCuSj5xvbM3STI6H+aSgvN6sq+wuRoGqKPhD76ItfLDEzxmNJXXbbKKo7siG/pTTLDtMJqTSh/eGa8vRTKkjUSafa8vzDDXJKfT7rRLH69NBoL3vUfy0KV9I2iDuQZthwpjtS9TOfDYoArCiEjo1lTCVsZWwqr/BiBJ7PM1y/en85buXYe6RBKcCLaH+46TPrwhCdO8hoOI6PVTYtr38CJqYh+vaj12RnqpIOlgVFGLni9E1Q7TvttpHSQJu+v2lVBiutdEmeliD4vCmxPrWx3Q2OpTveCK7buTwXgL4gE3v22yLO6/2NQOWTURkaPBE6Rpo8wHQZOnjwUVbXi+koU85B8vXUWydiUhhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCCGEEEIIIYQQQgghhBBCCPmt/AlT90xHNTih9QAAAABJRU5ErkJggg=="
        alt=""
        class="brand-image brand-icon-top"
      />
      <img
        src="data:image/png;base64,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"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="http://www.oneness-article.com/user_data/img/brand_logo/bp-masu.gif"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
      <img
        src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
        alt=""
        @click="openDetails"
        class="brand-image brand-icon-top"
      />
    </div>
    <div class="brand-details-body" v-show="showContent">
      <div class="brand-details-header">
        <FAIcon
          :icon="['fas', 'angle-left']"
          class="back-button"
          @click="closeDetails"
        />
      </div>
      <div class="brand-details-main">
        <div class="brand-details-image-area">
          <img
            src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
            alt=""
            class="brand-details-background-image"
          />
        </div>
        <img
          src="https://www.imn.jp/images/upload/2020/04/39e67032baf7048714a1097a41a74c9e.jpg"
          alt=""
          class="brand-image brand-icon-details"
        />
        <div class="brand-details-button">
          <p class="button-text">このブランドをフォローする</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showContent: false,
    };
  },

  methods: {
    openDetails: function () {
      this.showContent = true;
    },
    closeDetails: function () {
      this.showContent = false;
    },
  },
};
</script>

<style scoped>
.brand-area {
  height: 100%;
  width: 80%;
  position: absolute;
  left: 20%;
  top: 0;
}

.brand-image {
  background-color: #ccc;
  border-radius: 20px;
  border: 1px solid #d3d3d3;
  margin-top: 30px;
  margin-left: 20px;
  aspect-ratio: 1;
}

.brand-icon-top {
  width: 20%;
}

.brand-icon-top:hover {
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}

.brand-details-body {
  height: 100%;
  width: 80%;
  position: absolute;
  left: 20%;
  top: 0;
}

.back-button {
  height: 30px;
  width: 30px;
  margin-top: 15px;
  margin-left: 20px;
}

.back-button:hover {
  color: var(--main-bg-color);
}

.brand-details-image-area {
  width: 100%;
  position: absolute;
}

.brand-details-background-image {
  width: 100%;
  height: 350px;
  object-fit: cover;
}

.brand-icon-details {
  width: 15%;
  position: absolute;
  top: 120px;
  left: 100px;
}

.brand-details-button {
  background-color: var(--main-bg-color);
  font-weight: 2px;
  position: absolute;
  top: 380px;
  left: 0;
  right: 0;
  margin: auto;
  width: 230px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-radius: 20px;
  cursor: pointer;
}

.button-text {
  color: var(--main-font-color);
  font-weight: bold;
}
</style>