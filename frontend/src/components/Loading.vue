<template>
  <div class="loader">
    <div class="ball-spin-fade-loader">
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
    </div>
  </div>
</template>

<script>
export default {
  name: "LoadingIcon"
};
</script>

<style scoped>
.loader {
  display: inline-block;
  position: absolute;
  top: 30%;
  left: 50%;
}

@-webkit-keyframes ball-spin-fade-loader {
  50% {
    opacity: 0.3;
    -webkit-transform: scale(0.4);
    transform: scale(0.4);
  }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
    transform: scale(1);
  }
}

@keyframes ball-spin-fade-loader {
  50% {
    opacity: 0.3;
    -webkit-transform: scale(0.4);
    transform: scale(0.4);
  }
  100% {
    opacity: 1;
    -webkit-transform: scale(1);
    transform: scale(1);
  }
}

.ball-spin-fade-loader {
  position: relative;
  top: -10px;
  left: -10px;
}
.ball-spin-fade-loader > div:nth-child(1) {
  top: 25px;
  left: 0;
  -webkit-animation: ball-spin-fade-loader 1s -0.96s infinite linear;
  animation: ball-spin-fade-loader 1s -0.96s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(2) {
  top: 17.04545px;
  left: 17.04545px;
  -webkit-animation: ball-spin-fade-loader 1s -0.84s infinite linear;
  animation: ball-spin-fade-loader 1s -0.84s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(3) {
  top: 0;
  left: 25px;
  -webkit-animation: ball-spin-fade-loader 1s -0.72s infinite linear;
  animation: ball-spin-fade-loader 1s -0.72s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(4) {
  top: -17.04545px;
  left: 17.04545px;
  -webkit-animation: ball-spin-fade-loader 1s -0.6s infinite linear;
  animation: ball-spin-fade-loader 1s -0.6s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(5) {
  top: -25px;
  left: 0;
  -webkit-animation: ball-spin-fade-loader 1s -0.48s infinite linear;
  animation: ball-spin-fade-loader 1s -0.48s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(6) {
  top: -17.04545px;
  left: -17.04545px;
  -webkit-animation: ball-spin-fade-loader 1s -0.36s infinite linear;
  animation: ball-spin-fade-loader 1s -0.36s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(7) {
  top: 0;
  left: -25px;
  -webkit-animation: ball-spin-fade-loader 1s -0.24s infinite linear;
  animation: ball-spin-fade-loader 1s -0.24s infinite linear;
}
.ball-spin-fade-loader > div:nth-child(8) {
  top: 17.04545px;
  left: -17.04545px;
  -webkit-animation: ball-spin-fade-loader 1s -0.12s infinite linear;
  animation: ball-spin-fade-loader 1s -0.12s infinite linear;
}
.ball-spin-fade-loader > div {
  background-color: var(--main-bg-color);
  width: 15px;
  height: 15px;
  border-radius: 100%;
  margin: 2px;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  position: absolute;
}

@-webkit-keyframes ball-spin-loader {
  75% {
    opacity: 0.2;
  }
  100% {
    opacity: 1;
  }
}

@keyframes ball-spin-loader {
  75% {
    opacity: 0.2;
  }
  100% {
    opacity: 1;
  }
}

.ball-spin-loader {
  position: relative;
}
.ball-spin-loader > span:nth-child(1) {
  top: 45px;
  left: 0;
  -webkit-animation: ball-spin-loader 2s 0.9s infinite linear;
  animation: ball-spin-loader 2s 0.9s infinite linear;
}
.ball-spin-loader > span:nth-child(2) {
  top: 30.68182px;
  left: 30.68182px;
  -webkit-animation: ball-spin-loader 2s 1.8s infinite linear;
  animation: ball-spin-loader 2s 1.8s infinite linear;
}
.ball-spin-loader > span:nth-child(3) {
  top: 0;
  left: 45px;
  -webkit-animation: ball-spin-loader 2s 2.7s infinite linear;
  animation: ball-spin-loader 2s 2.7s infinite linear;
}
.ball-spin-loader > span:nth-child(4) {
  top: -30.68182px;
  left: 30.68182px;
  -webkit-animation: ball-spin-loader 2s 3.6s infinite linear;
  animation: ball-spin-loader 2s 3.6s infinite linear;
}
.ball-spin-loader > span:nth-child(5) {
  top: -45px;
  left: 0;
  -webkit-animation: ball-spin-loader 2s 4.5s infinite linear;
  animation: ball-spin-loader 2s 4.5s infinite linear;
}
.ball-spin-loader > span:nth-child(6) {
  top: -30.68182px;
  left: -30.68182px;
  -webkit-animation: ball-spin-loader 2s 5.4s infinite linear;
  animation: ball-spin-loader 2s 5.4s infinite linear;
}
.ball-spin-loader > span:nth-child(7) {
  top: 0;
  left: -45px;
  -webkit-animation: ball-spin-loader 2s 6.3s infinite linear;
  animation: ball-spin-loader 2s 6.3s infinite linear;
}
.ball-spin-loader > span:nth-child(8) {
  top: 30.68182px;
  left: -30.68182px;
  -webkit-animation: ball-spin-loader 2s 7.2s infinite linear;
  animation: ball-spin-loader 2s 7.2s infinite linear;
}
.ball-spin-loader > div {
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
  position: absolute;
  width: 30px;
  height: 30px;
  border-radius: 100%;
  background: green;
}
</style>