<template>
  <div class="background-particles">
    <div class="background-particles__particle-container" v-for="index in 50" :key="index">
      <div class="background-particles__particle"></div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'v-background-particles'
}
</script>

<style lang="scss" scoped>
@import "src/assets/scss/variables.scss";

.background-particles {
  position: absolute;
  top: 0;
  width: 100%;
  height: 90%;
  z-index: -100;
  opacity: 0.6;
  overflow: hidden;
}

.background-particles__particle-container {
  $particleWidth: 15px;
  $particleNum: 200;
  $particleColor: $primary;

  position: absolute;
  transform: translateY(-10vh);
  animation-iteration-count: infinite;
  animation-timing-function: linear;

  .background-particles__particle {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    mix-blend-mode: screen;
    background-image: radial-gradient(
            rgba($primary, 25%),
            rgba($primary, 33%) 10%,
            rgba($primary, 0) 56%
    );

  }

  @for $i from 1 through $particleNum {
    &:nth-child(#{$i}) {
      $circleSize: random($particleWidth);
      width: $circleSize + px;
      height: $circleSize + px;

      $startPositionY: random(10) + 100;
      $framesName: "move-frames-" + $i;
      $moveDuration: 7000 + random(4000) + ms;

      animation-name: #{$framesName};
      animation-duration: $moveDuration;
      animation-delay: random(11000) + ms;

      @keyframes #{$framesName} {
        from {
          transform: translate3d(
                  #{random(100) + vw},
                  #{$startPositionY + vh},
                  0
          );
        }

        to {
          transform: translate3d(
                  #{random(100) + vw},
                  #{- $startPositionY - random(30) + vh},
                  0
          );
        }
      }

      .circle {
        animation-delay: random(4000) + ms;
      }
    }
  }
}

@media screen and (max-width: 1000px) {
  .background-particles {
    display: none;
  }
}
</style>