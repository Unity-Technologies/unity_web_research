diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Metrics : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlatb0 : vec2<bool>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlatb8 : bool;

@group(0) @binding(2) var x_SearchTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

@group(0) @binding(1) var x_AreaTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat4 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : f32 = x_26.x_GlobalMipBias.x;
  let x_34 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_33);
  let x_35 : vec2<f32> = vec2<f32>(x_34.x, x_34.y);
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_36.z, x_36.w);
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_44.y, x_44.x, x_44.y, x_44.y));
  u_xlatb0 = vec2<bool>(x_47.x, x_47.y);
  let x_51 : bool = u_xlatb0.x;
  if (x_51) {
    let x_57 : vec4<f32> = vs_TEXCOORD2;
    let x_58 : vec2<f32> = vec2<f32>(x_57.x, x_57.y);
    let x_59 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_58.x, x_58.y, x_59.z, x_59.w);
    u_xlat1.z = 1.0f;
    u_xlat2.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_78 : f32 = vs_TEXCOORD4.x;
      let x_80 : f32 = u_xlat1.x;
      u_xlatb0.x = (x_78 < x_80);
      let x_86 : f32 = u_xlat1.z;
      u_xlatb8 = (0.82810002565383911133f < x_86);
      let x_88 : bool = u_xlatb8;
      let x_90 : bool = u_xlatb0.x;
      u_xlatb0.x = (x_88 & x_90);
      let x_94 : f32 = u_xlat2.x;
      u_xlatb8 = (x_94 == 0.0f);
      let x_96 : bool = u_xlatb8;
      let x_98 : bool = u_xlatb0.x;
      u_xlatb0.x = (x_96 & x_98);
      let x_102 : bool = u_xlatb0.x;
      if (!(x_102)) {
        break;
      }
      let x_110 : vec4<f32> = u_xlat1;
      let x_112 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_110.x, x_110.y), 0.0f);
      let x_113 : vec2<f32> = vec2<f32>(x_112.x, x_112.y);
      let x_114 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_113.x, x_113.y, x_114.z);
      let x_119 : vec4<f32> = x_26.x_Metrics;
      let x_125 : vec4<f32> = u_xlat1;
      let x_127 : vec2<f32> = ((vec2<f32>(x_119.x, x_119.y) * vec2<f32>(-2.0f, -0.0f)) + vec2<f32>(x_125.x, x_125.y));
      let x_128 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
      let x_132 : f32 = u_xlat2.y;
      u_xlat1.z = x_132;
    }
    let x_134 : vec4<f32> = u_xlat1;
    let x_135 : vec2<f32> = vec2<f32>(x_134.x, x_134.z);
    let x_136 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_136.x, x_135.x, x_135.y);
    let x_138 : vec3<f32> = u_xlat2;
    let x_146 : vec2<f32> = ((vec2<f32>(x_138.x, x_138.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_147 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_146.x, x_147.y, x_146.y, x_147.w);
    let x_153 : vec4<f32> = u_xlat0;
    let x_155 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_153.x, x_153.z), 0.0f);
    u_xlat0.x = x_155.w;
    let x_160 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_160 * -2.00787401199340820312f) + 3.25f);
    let x_167 : f32 = x_26.x_Metrics.x;
    let x_169 : f32 = u_xlat0.x;
    let x_172 : f32 = u_xlat2.y;
    u_xlat1.x = ((x_167 * x_169) + x_172);
    let x_177 : f32 = vs_TEXCOORD3.y;
    u_xlat1.y = x_177;
    let x_182 : vec4<f32> = u_xlat1;
    let x_184 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_182.x, x_182.y), 0.0f);
    u_xlat0.x = x_184.x;
    let x_187 : vec4<f32> = vs_TEXCOORD2;
    let x_188 : vec2<f32> = vec2<f32>(x_187.z, x_187.w);
    let x_189 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_188.x, x_188.y, x_189.z);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_201 : f32 = u_xlat2.x;
      let x_203 : f32 = vs_TEXCOORD4.y;
      u_xlatb12 = (x_201 < x_203);
      let x_207 : f32 = u_xlat2.z;
      u_xlatb13 = (0.82810002565383911133f < x_207);
      let x_209 : bool = u_xlatb12;
      let x_210 : bool = u_xlatb13;
      u_xlatb12 = (x_209 & x_210);
      let x_213 : f32 = u_xlat3.x;
      u_xlatb13 = (x_213 == 0.0f);
      let x_215 : bool = u_xlatb12;
      let x_216 : bool = u_xlatb13;
      u_xlatb12 = (x_215 & x_216);
      let x_218 : bool = u_xlatb12;
      if (!(x_218)) {
        break;
      }
      let x_226 : vec3<f32> = u_xlat2;
      let x_228 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_226.x, x_226.y), 0.0f);
      let x_229 : vec2<f32> = vec2<f32>(x_228.x, x_228.y);
      let x_230 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_229.x, x_229.y, x_230.z);
      let x_233 : vec4<f32> = x_26.x_Metrics;
      let x_238 : vec3<f32> = u_xlat2;
      let x_240 : vec2<f32> = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(2.0f, 0.0f)) + vec2<f32>(x_238.x, x_238.y));
      let x_241 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_240.x, x_240.y, x_241.z);
      let x_244 : f32 = u_xlat3.y;
      u_xlat2.z = x_244;
    }
    let x_246 : vec3<f32> = u_xlat2;
    let x_247 : vec2<f32> = vec2<f32>(x_246.x, x_246.z);
    let x_248 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_248.x, x_247.x, x_247.y);
    let x_250 : vec3<f32> = u_xlat3;
    let x_255 : vec2<f32> = ((vec2<f32>(x_250.x, x_250.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_256 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_255.x, x_255.y, x_256.z);
    let x_262 : vec3<f32> = u_xlat2;
    let x_264 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_262.x, x_262.y), 0.0f);
    u_xlat12 = x_264.w;
    let x_266 : f32 = u_xlat12;
    u_xlat12 = ((x_266 * -2.00787401199340820312f) + 3.25f);
    let x_270 : f32 = x_26.x_Metrics.x;
    let x_272 : f32 = u_xlat12;
    let x_275 : f32 = u_xlat3.y;
    u_xlat1.z = ((-(x_270) * x_272) + x_275);
    let x_279 : vec4<f32> = x_26.x_Metrics;
    let x_281 : vec4<f32> = u_xlat1;
    let x_285 : vec2<f32> = vs_TEXCOORD1;
    let x_288 : vec2<f32> = ((vec2<f32>(x_279.z, x_279.z) * vec2<f32>(x_281.x, x_281.z)) + -(vec2<f32>(x_285.x, x_285.x)));
    let x_289 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_288.x, x_289.y, x_289.z, x_288.y);
    let x_291 : vec4<f32> = u_xlat1;
    let x_293 : vec2<f32> = round(vec2<f32>(x_291.x, x_291.w));
    let x_294 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_293.x, x_294.y, x_294.z, x_293.y);
    let x_296 : vec4<f32> = u_xlat1;
    let x_299 : vec2<f32> = sqrt(abs(vec2<f32>(x_296.x, x_296.w)));
    let x_300 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_299.x, x_300.y, x_300.z, x_299.y);
    let x_305 : vec4<f32> = x_26.x_Metrics;
    let x_309 : vec4<f32> = u_xlat1;
    u_xlat5 = ((vec2<f32>(x_305.x, x_305.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_309.z, x_309.y));
    let x_315 : vec2<f32> = u_xlat5;
    let x_316 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_315, 0.0f);
    u_xlat0.z = x_316.x;
    let x_319 : vec4<f32> = u_xlat0;
    let x_323 : vec2<f32> = (vec2<f32>(x_319.x, x_319.z) * vec2<f32>(4.0f, 4.0f));
    let x_324 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_323.x, x_324.y, x_323.y, x_324.w);
    let x_326 : vec4<f32> = u_xlat0;
    let x_328 : vec2<f32> = round(vec2<f32>(x_326.x, x_326.z));
    let x_329 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_328.x, x_329.y, x_328.y, x_329.w);
    let x_331 : vec4<f32> = u_xlat0;
    let x_336 : vec4<f32> = u_xlat1;
    let x_338 : vec2<f32> = ((vec2<f32>(x_331.x, x_331.z) * vec2<f32>(16.0f, 16.0f)) + vec2<f32>(x_336.x, x_336.w));
    let x_339 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_338.x, x_339.y, x_338.y, x_339.w);
    let x_341 : vec4<f32> = u_xlat0;
    let x_350 : vec2<f32> = ((vec2<f32>(x_341.x, x_341.z) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.00312500004656612873f, 0.00089285714784637094f));
    let x_351 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_350.x, x_351.y, x_350.y, x_351.w);
    let x_357 : vec4<f32> = u_xlat0;
    let x_359 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_357.x, x_357.z), 0.0f);
    let x_360 : vec2<f32> = vec2<f32>(x_359.x, x_359.y);
    let x_361 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_360.x, x_361.y, x_360.y, x_361.w);
    let x_365 : vec4<f32> = u_xlat0;
    let x_366 : vec2<f32> = vec2<f32>(x_365.x, x_365.z);
    let x_367 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  } else {
    let x_371 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y, x_371.z, x_371.w);
  }
  let x_374 : bool = u_xlatb0.y;
  if (x_374) {
    let x_377 : vec4<f32> = vs_TEXCOORD3;
    let x_378 : vec2<f32> = vec2<f32>(x_377.x, x_377.y);
    let x_379 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    u_xlat0.z = 1.0f;
    u_xlat1.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_389 : f32 = vs_TEXCOORD4.z;
      let x_391 : f32 = u_xlat0.y;
      u_xlatb12 = (x_389 < x_391);
      let x_394 : f32 = u_xlat0.z;
      u_xlatb13 = (0.82810002565383911133f < x_394);
      let x_396 : bool = u_xlatb12;
      let x_397 : bool = u_xlatb13;
      u_xlatb12 = (x_396 & x_397);
      let x_400 : f32 = u_xlat1.x;
      u_xlatb13 = (x_400 == 0.0f);
      let x_402 : bool = u_xlatb12;
      let x_403 : bool = u_xlatb13;
      u_xlatb12 = (x_402 & x_403);
      let x_405 : bool = u_xlatb12;
      if (!(x_405)) {
        break;
      }
      let x_413 : vec4<f32> = u_xlat0;
      let x_415 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_413.x, x_413.y), 0.0f);
      let x_416 : vec2<f32> = vec2<f32>(x_415.y, x_415.x);
      let x_417 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
      let x_420 : vec4<f32> = x_26.x_Metrics;
      let x_424 : vec4<f32> = u_xlat0;
      let x_426 : vec2<f32> = ((vec2<f32>(x_420.x, x_420.y) * vec2<f32>(-0.0f, -2.0f)) + vec2<f32>(x_424.x, x_424.y));
      let x_427 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
      let x_430 : f32 = u_xlat1.y;
      u_xlat0.z = x_430;
    }
    let x_432 : vec4<f32> = u_xlat0;
    let x_433 : vec2<f32> = vec2<f32>(x_432.y, x_432.z);
    let x_434 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_433.x, x_433.y, x_434.w);
    let x_436 : vec4<f32> = u_xlat1;
    let x_439 : vec2<f32> = ((vec2<f32>(x_436.x, x_436.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_440 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
    let x_445 : vec4<f32> = u_xlat0;
    let x_447 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_445.x, x_445.y), 0.0f);
    u_xlat0.x = x_447.w;
    let x_451 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_451 * -2.00787401199340820312f) + 3.25f);
    let x_456 : f32 = x_26.x_Metrics.y;
    let x_458 : f32 = u_xlat0.x;
    let x_461 : f32 = u_xlat1.y;
    u_xlat0.x = ((x_456 * x_458) + x_461);
    let x_465 : f32 = vs_TEXCOORD2.x;
    u_xlat0.y = x_465;
    let x_470 : vec4<f32> = u_xlat0;
    let x_472 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_470.y, x_470.x), 0.0f);
    u_xlat1.x = x_472.y;
    let x_475 : vec4<f32> = vs_TEXCOORD3;
    let x_476 : vec2<f32> = vec2<f32>(x_475.z, x_475.w);
    let x_477 : vec3<f32> = u_xlat2;
    u_xlat2 = vec3<f32>(x_476.x, x_476.y, x_477.z);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_487 : f32 = u_xlat2.y;
      let x_489 : f32 = vs_TEXCOORD4.w;
      u_xlatb12 = (x_487 < x_489);
      let x_493 : f32 = u_xlat2.z;
      u_xlatb9 = (0.82810002565383911133f < x_493);
      let x_495 : bool = u_xlatb12;
      let x_496 : bool = u_xlatb9;
      u_xlatb12 = (x_495 & x_496);
      let x_499 : f32 = u_xlat3.x;
      u_xlatb9 = (x_499 == 0.0f);
      let x_501 : bool = u_xlatb12;
      let x_502 : bool = u_xlatb9;
      u_xlatb12 = (x_501 & x_502);
      let x_504 : bool = u_xlatb12;
      if (!(x_504)) {
        break;
      }
      let x_512 : vec3<f32> = u_xlat2;
      let x_514 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_512.x, x_512.y), 0.0f);
      let x_515 : vec2<f32> = vec2<f32>(x_514.y, x_514.x);
      let x_516 : vec3<f32> = u_xlat3;
      u_xlat3 = vec3<f32>(x_515.x, x_515.y, x_516.z);
      let x_519 : vec4<f32> = x_26.x_Metrics;
      let x_523 : vec3<f32> = u_xlat2;
      let x_525 : vec2<f32> = ((vec2<f32>(x_519.x, x_519.y) * vec2<f32>(0.0f, 2.0f)) + vec2<f32>(x_523.x, x_523.y));
      let x_526 : vec3<f32> = u_xlat2;
      u_xlat2 = vec3<f32>(x_525.x, x_525.y, x_526.z);
      let x_529 : f32 = u_xlat3.y;
      u_xlat2.z = x_529;
    }
    let x_531 : vec3<f32> = u_xlat2;
    let x_532 : vec2<f32> = vec2<f32>(x_531.y, x_531.z);
    let x_533 : vec3<f32> = u_xlat3;
    u_xlat3 = vec3<f32>(x_533.x, x_532.x, x_532.y);
    let x_536 : vec3<f32> = u_xlat3;
    u_xlat9 = ((vec2<f32>(x_536.x, x_536.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_543 : vec2<f32> = u_xlat9;
    let x_544 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, x_543, 0.0f);
    u_xlat12 = x_544.w;
    let x_546 : f32 = u_xlat12;
    u_xlat12 = ((x_546 * -2.00787401199340820312f) + 3.25f);
    let x_550 : f32 = x_26.x_Metrics.y;
    let x_552 : f32 = u_xlat12;
    let x_555 : f32 = u_xlat3.y;
    u_xlat0.z = ((-(x_550) * x_552) + x_555);
    let x_559 : vec4<f32> = x_26.x_Metrics;
    let x_561 : vec4<f32> = u_xlat0;
    let x_564 : vec2<f32> = vs_TEXCOORD1;
    let x_567 : vec2<f32> = ((vec2<f32>(x_559.w, x_559.w) * vec2<f32>(x_561.x, x_561.z)) + -(vec2<f32>(x_564.y, x_564.y)));
    let x_568 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_567.x, x_568.y, x_568.z, x_567.y);
    let x_570 : vec4<f32> = u_xlat0;
    let x_572 : vec2<f32> = round(vec2<f32>(x_570.x, x_570.w));
    let x_573 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_572.x, x_573.y, x_573.z, x_572.y);
    let x_575 : vec4<f32> = u_xlat0;
    let x_578 : vec2<f32> = sqrt(abs(vec2<f32>(x_575.x, x_575.w)));
    let x_579 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_578.x, x_579.y, x_579.z, x_578.y);
    let x_583 : vec4<f32> = x_26.x_Metrics;
    let x_587 : vec4<f32> = u_xlat0;
    u_xlat4 = ((vec2<f32>(x_583.x, x_583.y) * vec2<f32>(0.0f, 1.0f)) + vec2<f32>(x_587.y, x_587.z));
    let x_593 : vec2<f32> = u_xlat4;
    let x_594 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_593, 0.0f);
    u_xlat1.y = x_594.y;
    let x_597 : vec4<f32> = u_xlat1;
    u_xlat4 = (vec2<f32>(x_597.x, x_597.y) * vec2<f32>(4.0f, 4.0f));
    let x_600 : vec2<f32> = u_xlat4;
    u_xlat4 = round(x_600);
    let x_602 : vec2<f32> = u_xlat4;
    let x_604 : vec4<f32> = u_xlat0;
    let x_606 : vec2<f32> = ((x_602 * vec2<f32>(16.0f, 16.0f)) + vec2<f32>(x_604.x, x_604.w));
    let x_607 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
    let x_609 : vec4<f32> = u_xlat0;
    let x_612 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.y) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.00312500004656612873f, 0.00089285714784637094f));
    let x_613 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_612.x, x_612.y, x_613.z, x_613.w);
    let x_618 : vec4<f32> = u_xlat0;
    let x_620 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_618.x, x_618.y), 0.0f);
    let x_621 : vec2<f32> = vec2<f32>(x_620.x, x_620.y);
    let x_622 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat0;
    let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
    let x_626 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_626.x, x_626.y, x_625.x, x_625.y);
  } else {
    let x_629 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_629.x, x_629.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


