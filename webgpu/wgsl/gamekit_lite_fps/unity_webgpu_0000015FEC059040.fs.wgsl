struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlatb19 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb21 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb7 : vec3<bool>;

@group(0) @binding(2) var x_AreaTex : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_SearchTex : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlat13 : vec2<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var hlslcc_movcTemp : vec3<f32>;
  var x_313 : f32;
  var x_323 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_613 : f32;
  var x_623 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  let x_25 : vec2<f32> = vec2<f32>(x_24.x, x_24.y);
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_26.z, x_26.w);
  let x_36 : f32 = u_xlat0.y;
  u_xlatb6 = (0.0f < x_36);
  let x_38 : bool = u_xlatb6;
  if (x_38) {
    let x_43 : f32 = u_xlat0.x;
    u_xlatb6 = (0.0f < x_43);
    let x_45 : bool = u_xlatb6;
    if (x_45) {
      let x_56 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_61 : vec2<f32> = (vec2<f32>(x_56.x, x_56.y) * vec2<f32>(-1.0f, 1.0f));
      let x_62 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_61.x, x_61.y, x_62.z, x_62.w);
      u_xlat1.z = 1.0f;
      let x_67 : vec2<f32> = vs_TEXCOORD0;
      let x_68 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
      u_xlat6.x = 0.0f;
      u_xlat2.z = -1.0f;
      u_xlat3.x = 1.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_85 : f32 = u_xlat2.z;
        u_xlatb18 = (x_85 < 7.0f);
        let x_91 : f32 = u_xlat3.x;
        u_xlatb19 = (0.899999976f < x_91);
        let x_93 : bool = u_xlatb18;
        let x_94 : bool = u_xlatb19;
        u_xlatb18 = (x_93 & x_94);
        let x_96 : bool = u_xlatb18;
        if (!(x_96)) {
          break;
        }
        let x_101 : vec4<f32> = u_xlat1;
        let x_103 : vec4<f32> = u_xlat2;
        let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) + vec3<f32>(x_103.x, x_103.y, x_103.z));
        let x_106 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
        let x_111 : vec4<f32> = u_xlat2;
        let x_113 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_111.x, x_111.y), 0.0f);
        let x_114 : vec2<f32> = vec2<f32>(x_113.y, x_113.x);
        let x_115 : vec3<f32> = u_xlat6;
        u_xlat6 = vec3<f32>(x_114.x, x_114.y, x_115.z);
        let x_117 : vec3<f32> = u_xlat6;
        u_xlat3.x = dot(vec2<f32>(x_117.y, x_117.x), vec2<f32>(0.5f, 0.5f));
      }
      let x_124 : f32 = u_xlat6.x;
      u_xlatb6 = (0.899999976f < x_124);
      let x_126 : bool = u_xlatb6;
      u_xlat6.x = select(0.0f, 1.0f, x_126);
      let x_130 : f32 = u_xlat6.x;
      let x_132 : f32 = u_xlat2.z;
      u_xlat1.x = (x_130 + x_132);
    } else {
      u_xlat1.x = 0.0f;
      u_xlat3.x = 0.0f;
    }
    let x_139 : vec4<f32> = x_51.x_MainTex_TexelSize;
    let x_142 : vec2<f32> = (vec2<f32>(x_139.x, x_139.y) * vec2<f32>(1.0f, -1.0f));
    let x_143 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_142.x, x_142.y, x_143.z);
    u_xlat6.z = 1.0f;
    let x_146 : vec2<f32> = vs_TEXCOORD0;
    let x_147 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_147.x, x_146.x, x_146.y, x_147.w);
    u_xlat2.x = -1.0f;
    u_xlat20 = 1.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_158 : f32 = u_xlat2.x;
      u_xlatb15 = (x_158 < 7.0f);
      let x_161 : f32 = u_xlat20;
      u_xlatb21 = (0.899999976f < x_161);
      let x_163 : bool = u_xlatb21;
      let x_164 : bool = u_xlatb15;
      u_xlatb15 = (x_163 & x_164);
      let x_166 : bool = u_xlatb15;
      if (!(x_166)) {
        break;
      }
      let x_171 : vec3<f32> = u_xlat6;
      let x_173 : vec4<f32> = u_xlat2;
      let x_175 : vec3<f32> = (vec3<f32>(x_171.z, x_171.x, x_171.y) + vec3<f32>(x_173.x, x_173.y, x_173.z));
      let x_176 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
      let x_183 : vec4<f32> = u_xlat2;
      let x_185 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_183.y, x_183.z), 0.0f);
      u_xlat15 = vec2<f32>(x_185.x, x_185.y);
      let x_187 : vec2<f32> = u_xlat15;
      u_xlat20 = dot(x_187, vec2<f32>(0.5f, 0.5f));
    }
    let x_189 : f32 = u_xlat20;
    u_xlat3.y = x_189;
    let x_192 : f32 = u_xlat1.x;
    let x_194 : f32 = u_xlat2.x;
    u_xlat6.x = (x_192 + x_194);
    let x_199 : f32 = u_xlat6.x;
    u_xlatb6 = (2.0f < x_199);
    let x_201 : bool = u_xlatb6;
    if (x_201) {
      let x_205 : f32 = u_xlat1.x;
      u_xlat1.y = (-(x_205) + 0.25f);
      let x_210 : vec4<f32> = u_xlat2;
      let x_215 : vec2<f32> = ((vec2<f32>(x_210.x, x_210.x) * vec2<f32>(1.0f, -1.0f)) + vec2<f32>(0.0f, -0.25f));
      let x_216 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_215.x, x_215.y);
      let x_218 : vec4<f32> = u_xlat1;
      let x_221 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_224 : vec2<f32> = vs_TEXCOORD0;
      u_xlat2 = ((vec4<f32>(x_218.y, x_218.x, x_218.z, x_218.w) * vec4<f32>(x_221.x, x_221.y, x_221.x, x_221.y)) + vec4<f32>(x_224.x, x_224.y, x_224.x, x_224.y));
      let x_230 : vec4<f32> = u_xlat2;
      let x_235 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_230.x, x_230.y), 0.0f, vec2<i32>(-1i, 0i));
      let x_236 : vec2<f32> = vec2<f32>(x_235.x, x_235.y);
      let x_237 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_236.x, x_236.y, x_237.z);
      let x_243 : vec4<f32> = u_xlat2;
      let x_247 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_243.z, x_243.w), 0.0f, vec2<i32>(1i, 0i));
      let x_248 : vec2<f32> = vec2<f32>(x_247.x, x_247.y);
      let x_249 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_248.x, x_249.y, x_248.y);
      let x_252 : f32 = u_xlat7.x;
      u_xlat6.z = x_252;
      let x_254 : vec3<f32> = u_xlat6;
      let x_261 : vec2<f32> = ((vec2<f32>(x_254.x, x_254.z) * vec2<f32>(5.0f, 5.0f)) + vec2<f32>(-3.75f, -3.75f));
      let x_262 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
      let x_264 : vec3<f32> = u_xlat6;
      let x_266 : vec4<f32> = u_xlat2;
      let x_269 : vec2<f32> = (vec2<f32>(x_264.x, x_264.z) * abs(vec2<f32>(x_266.x, x_266.y)));
      let x_270 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_269.x, x_270.y, x_269.y);
      let x_272 : vec3<f32> = u_xlat6;
      let x_274 : vec2<f32> = round(vec2<f32>(x_272.x, x_272.z));
      let x_275 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_274.x, x_275.y, x_274.y);
      let x_279 : f32 = u_xlat6.y;
      u_xlat8.x = round(x_279);
      let x_283 : f32 = u_xlat7.z;
      u_xlat8.z = round(x_283);
      let x_286 : vec3<f32> = u_xlat8;
      let x_290 : vec3<f32> = u_xlat6;
      let x_292 : vec2<f32> = ((vec2<f32>(x_286.x, x_286.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_290.x, x_290.z));
      let x_293 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_292.x, x_292.y, x_293.z);
      let x_298 : vec4<f32> = u_xlat3;
      let x_302 : vec4<bool> = (vec4<f32>(x_298.x, x_298.x, x_298.y, x_298.y) >= vec4<f32>(0.899999976f, 0.0f, 0.899999976f, 0.899999976f));
      let x_304 : vec2<bool> = vec2<bool>(x_302.x, x_302.z);
      let x_305 : vec3<bool> = u_xlatb7;
      u_xlatb7 = vec3<bool>(x_304.x, x_305.y, x_304.y);
      let x_309 : vec3<f32> = u_xlat6;
      hlslcc_movcTemp = x_309;
      let x_311 : bool = u_xlatb7.x;
      if (x_311) {
        x_313 = 0.0f;
      } else {
        let x_318 : f32 = u_xlat6.x;
        x_313 = x_318;
      }
      let x_319 : f32 = x_313;
      hlslcc_movcTemp.x = x_319;
      let x_322 : bool = u_xlatb7.z;
      if (x_322) {
        x_323 = 0.0f;
      } else {
        let x_328 : f32 = u_xlat6.y;
        x_323 = x_328;
      }
      let x_329 : f32 = x_323;
      hlslcc_movcTemp.y = x_329;
      let x_331 : vec3<f32> = hlslcc_movcTemp;
      u_xlat6 = x_331;
      let x_332 : vec3<f32> = u_xlat6;
      let x_337 : vec4<f32> = u_xlat1;
      let x_339 : vec2<f32> = ((vec2<f32>(x_332.x, x_332.y) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_337.x, x_337.z));
      let x_340 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_339.x, x_339.y, x_340.z);
      let x_342 : vec3<f32> = u_xlat6;
      let x_351 : vec2<f32> = ((vec2<f32>(x_342.x, x_342.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.503125012f, 0.000892857148f));
      let x_352 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_351.x, x_351.y, x_352.z);
      let x_358 : vec3<f32> = u_xlat6;
      let x_360 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_358.x, x_358.y), 0.0f);
      let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
      let x_362 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_361.x, x_361.y, x_362.z);
    } else {
      u_xlat6.x = 0.0f;
      u_xlat6.y = 0.0f;
    }
    let x_370 : f32 = x_51.x_MainTex_TexelSize.x;
    let x_374 : f32 = vs_TEXCOORD0.x;
    u_xlat18 = ((x_370 * 0.25f) + x_374);
    let x_377 : vec4<f32> = x_51.x_MainTex_TexelSize;
    let x_379 : vec2<f32> = -(vec2<f32>(x_377.x, x_377.y));
    let x_380 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
    u_xlat1.z = 1.0f;
    let x_383 : f32 = u_xlat18;
    u_xlat8.x = x_383;
    let x_386 : f32 = vs_TEXCOORD0.y;
    u_xlat8.y = x_386;
    u_xlat2.x = 1.0f;
    u_xlat8.z = -1.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_396 : f32 = u_xlat8.z;
      u_xlatb19 = (x_396 < 7.0f);
      let x_401 : f32 = u_xlat2.x;
      u_xlatb3.x = (0.899999976f < x_401);
      let x_404 : bool = u_xlatb19;
      let x_406 : bool = u_xlatb3.x;
      u_xlatb19 = (x_404 & x_406);
      let x_408 : bool = u_xlatb19;
      if (!(x_408)) {
        break;
      }
      let x_413 : vec4<f32> = u_xlat1;
      let x_415 : vec3<f32> = u_xlat8;
      u_xlat8 = (vec3<f32>(x_413.x, x_413.y, x_413.z) + x_415);
      let x_420 : vec3<f32> = u_xlat8;
      let x_422 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_420.x, x_420.y), 0.0f);
      let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
      let x_424 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
      let x_428 : f32 = u_xlat3.x;
      u_xlat19 = ((x_428 * 5.0f) + -3.75f);
      let x_431 : f32 = u_xlat19;
      let x_434 : f32 = u_xlat3.x;
      u_xlat19 = (abs(x_431) * x_434);
      let x_437 : f32 = u_xlat19;
      u_xlat4.x = round(x_437);
      let x_441 : f32 = u_xlat3.y;
      u_xlat4.y = round(x_441);
      let x_444 : vec4<f32> = u_xlat4;
      u_xlat2.x = dot(vec2<f32>(x_444.x, x_444.y), vec2<f32>(0.5f, 0.5f));
    }
    let x_449 : f32 = u_xlat8.z;
    u_xlat1.x = x_449;
    let x_454 : vec2<f32> = vs_TEXCOORD0;
    let x_455 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_454, 0.0f, vec2<i32>(1i, 0i));
    u_xlat19 = x_455.x;
    let x_457 : f32 = u_xlat19;
    u_xlatb19 = (0.0f < x_457);
    let x_459 : bool = u_xlatb19;
    if (x_459) {
      let x_463 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
      let x_465 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
      u_xlat3.z = 1.0f;
      let x_468 : f32 = u_xlat18;
      u_xlat4.x = x_468;
      let x_471 : f32 = vs_TEXCOORD0.y;
      u_xlat4.y = x_471;
      u_xlat4.z = -1.0f;
      u_xlat2.y = 1.0f;
      u_xlat14.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_483 : f32 = u_xlat4.z;
        u_xlatb19 = (x_483 < 7.0f);
        let x_486 : f32 = u_xlat2.y;
        u_xlatb21 = (0.899999976f < x_486);
        let x_488 : bool = u_xlatb19;
        let x_489 : bool = u_xlatb21;
        u_xlatb19 = (x_488 & x_489);
        let x_491 : bool = u_xlatb19;
        if (!(x_491)) {
          break;
        }
        let x_496 : vec4<f32> = u_xlat3;
        let x_498 : vec4<f32> = u_xlat4;
        let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) + vec3<f32>(x_498.x, x_498.y, x_498.z));
        let x_501 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
        let x_507 : vec4<f32> = u_xlat4;
        let x_509 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_507.x, x_507.y), 0.0f);
        u_xlat5 = vec2<f32>(x_509.x, x_509.y);
        let x_512 : f32 = u_xlat5.x;
        u_xlat19 = ((x_512 * 5.0f) + -3.75f);
        let x_515 : f32 = u_xlat19;
        let x_518 : f32 = u_xlat5.x;
        u_xlat19 = (abs(x_515) * x_518);
        let x_520 : f32 = u_xlat19;
        u_xlat14.y = round(x_520);
        let x_524 : f32 = u_xlat5.y;
        u_xlat14.x = round(x_524);
        let x_527 : vec2<f32> = u_xlat14;
        u_xlat2.y = dot(vec2<f32>(x_527.y, x_527.x), vec2<f32>(0.5f, 0.5f));
      }
      let x_532 : f32 = u_xlat14.x;
      u_xlatb18 = (0.899999976f < x_532);
      let x_534 : bool = u_xlatb18;
      u_xlat18 = select(0.0f, 1.0f, x_534);
      let x_536 : f32 = u_xlat18;
      let x_538 : f32 = u_xlat4.z;
      u_xlat1.z = (x_536 + x_538);
    } else {
      u_xlat1.z = 0.0f;
      u_xlat2.y = 0.0f;
    }
    let x_545 : f32 = u_xlat1.z;
    let x_547 : f32 = u_xlat1.x;
    u_xlat18 = (x_545 + x_547);
    let x_549 : f32 = u_xlat18;
    u_xlatb18 = (2.0f < x_549);
    let x_551 : bool = u_xlatb18;
    if (x_551) {
      let x_555 : f32 = u_xlat1.x;
      u_xlat1.y = -(x_555);
      let x_558 : vec4<f32> = u_xlat1;
      let x_561 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_564 : vec2<f32> = vs_TEXCOORD0;
      u_xlat3 = ((vec4<f32>(x_558.y, x_558.y, x_558.z, x_558.z) * vec4<f32>(x_561.x, x_561.y, x_561.x, x_561.y)) + vec4<f32>(x_564.x, x_564.y, x_564.x, x_564.y));
      let x_570 : vec4<f32> = u_xlat3;
      let x_572 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_570.x, x_570.y), 0.0f, vec2<i32>(-1i, 0i));
      u_xlat4.x = x_572.y;
      let x_578 : vec4<f32> = u_xlat3;
      let x_581 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_578.x, x_578.y), 0.0f, vec2<i32>(0i, -1i));
      u_xlat4.z = x_581.x;
      let x_587 : vec4<f32> = u_xlat3;
      let x_589 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_587.z, x_587.w), 0.0f, vec2<i32>(1i, 0i));
      let x_590 : vec2<f32> = vec2<f32>(x_589.y, x_589.x);
      let x_591 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_591.x, x_590.x, x_591.z, x_590.y);
      let x_593 : vec4<f32> = u_xlat4;
      let x_596 : vec4<f32> = u_xlat4;
      let x_598 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_596.z, x_596.w));
      let x_599 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_598.x, x_599.y, x_598.y);
      let x_602 : vec4<f32> = u_xlat2;
      let x_605 : vec4<bool> = (vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.x) >= vec4<f32>(0.899999976f, 0.899999976f, 0.0f, 0.0f));
      let x_606 : vec2<bool> = vec2<bool>(x_605.x, x_605.y);
      let x_607 : vec4<bool> = u_xlatb2;
      u_xlatb2 = vec4<bool>(x_606.x, x_606.y, x_607.z, x_607.w);
      let x_610 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_610;
      let x_612 : bool = u_xlatb2.x;
      if (x_612) {
        x_613 = 0.0f;
      } else {
        let x_618 : f32 = u_xlat7.x;
        x_613 = x_618;
      }
      let x_619 : f32 = x_613;
      hlslcc_movcTemp_1.x = x_619;
      let x_622 : bool = u_xlatb2.y;
      if (x_622) {
        x_623 = 0.0f;
      } else {
        let x_628 : f32 = u_xlat7.z;
        x_623 = x_628;
      }
      let x_629 : f32 = x_623;
      hlslcc_movcTemp_1.z = x_629;
      let x_631 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_631;
      let x_632 : vec3<f32> = u_xlat7;
      let x_635 : vec4<f32> = u_xlat1;
      let x_637 : vec2<f32> = ((vec2<f32>(x_632.x, x_632.z) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_635.x, x_635.z));
      let x_638 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
      let x_640 : vec4<f32> = u_xlat1;
      let x_643 : vec2<f32> = ((vec2<f32>(x_640.x, x_640.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.503125012f, 0.000892857148f));
      let x_644 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
      let x_649 : vec4<f32> = u_xlat1;
      let x_651 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_649.x, x_649.y), 0.0f);
      let x_652 : vec2<f32> = vec2<f32>(x_651.x, x_651.y);
      let x_653 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
      let x_655 : vec3<f32> = u_xlat6;
      let x_657 : vec4<f32> = u_xlat1;
      let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) + vec2<f32>(x_657.y, x_657.x));
      let x_660 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_659.x, x_659.y, x_660.z);
    }
    let x_663 : f32 = u_xlat6.y;
    let x_666 : f32 = u_xlat6.x;
    u_xlatb18 = (-(x_663) == x_666);
    let x_668 : bool = u_xlatb18;
    if (x_668) {
      let x_673 : vec4<f32> = vs_TEXCOORD2;
      let x_674 : vec2<f32> = vec2<f32>(x_673.x, x_673.y);
      let x_675 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_674.x, x_674.y, x_675.z, x_675.w);
      u_xlat1.z = 1.0f;
      u_xlat2.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_686 : f32 = vs_TEXCOORD4.x;
        let x_688 : f32 = u_xlat1.x;
        u_xlatb18 = (x_686 < x_688);
        let x_692 : f32 = u_xlat1.z;
        u_xlatb19 = (0.828100026f < x_692);
        let x_694 : bool = u_xlatb18;
        let x_695 : bool = u_xlatb19;
        u_xlatb18 = (x_694 & x_695);
        let x_698 : f32 = u_xlat2.x;
        u_xlatb19 = (x_698 == 0.0f);
        let x_700 : bool = u_xlatb18;
        let x_701 : bool = u_xlatb19;
        u_xlatb18 = (x_700 & x_701);
        let x_703 : bool = u_xlatb18;
        if (!(x_703)) {
          break;
        }
        let x_711 : vec4<f32> = u_xlat1;
        let x_713 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_711.x, x_711.y), 0.0f);
        let x_714 : vec2<f32> = vec2<f32>(x_713.x, x_713.y);
        let x_715 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_715.z, x_715.w);
        let x_718 : vec4<f32> = x_51.x_MainTex_TexelSize;
        let x_724 : vec4<f32> = u_xlat1;
        let x_726 : vec2<f32> = ((vec2<f32>(x_718.x, x_718.y) * vec2<f32>(-2.0f, -0.0f)) + vec2<f32>(x_724.x, x_724.y));
        let x_727 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
        let x_730 : f32 = u_xlat2.y;
        u_xlat1.z = x_730;
      }
      let x_732 : vec4<f32> = u_xlat1;
      let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.z);
      let x_734 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_734.x, x_733.x, x_733.y, x_734.w);
      let x_736 : vec4<f32> = u_xlat2;
      let x_743 : vec2<f32> = ((vec2<f32>(x_736.x, x_736.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
      let x_744 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
      let x_750 : vec4<f32> = u_xlat1;
      let x_752 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, vec2<f32>(x_750.x, x_750.y), 0.0f);
      u_xlat18 = x_752.w;
      let x_755 : f32 = u_xlat18;
      u_xlat18 = ((x_755 * -2.007874012f) + 3.25f);
      let x_761 : f32 = x_51.x_MainTex_TexelSize.x;
      let x_762 : f32 = u_xlat18;
      let x_765 : f32 = u_xlat2.y;
      u_xlat1.x = ((x_761 * x_762) + x_765);
      let x_770 : f32 = vs_TEXCOORD3.y;
      u_xlat1.y = x_770;
      let x_775 : vec4<f32> = u_xlat1;
      let x_777 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_775.x, x_775.y), 0.0f);
      u_xlat2.x = x_777.x;
      let x_780 : vec4<f32> = vs_TEXCOORD2;
      let x_781 : vec2<f32> = vec2<f32>(x_780.z, x_780.w);
      let x_782 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
      u_xlat3.z = 1.0f;
      u_xlat4.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_792 : f32 = u_xlat3.x;
        let x_794 : f32 = vs_TEXCOORD4.y;
        u_xlatb18 = (x_792 < x_794);
        let x_798 : f32 = u_xlat3.z;
        u_xlatb14 = (0.828100026f < x_798);
        let x_800 : bool = u_xlatb18;
        let x_801 : bool = u_xlatb14;
        u_xlatb18 = (x_800 & x_801);
        let x_804 : f32 = u_xlat4.x;
        u_xlatb14 = (x_804 == 0.0f);
        let x_806 : bool = u_xlatb18;
        let x_807 : bool = u_xlatb14;
        u_xlatb18 = (x_806 & x_807);
        let x_809 : bool = u_xlatb18;
        if (!(x_809)) {
          break;
        }
        let x_817 : vec4<f32> = u_xlat3;
        let x_819 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_817.x, x_817.y), 0.0f);
        let x_820 : vec2<f32> = vec2<f32>(x_819.x, x_819.y);
        let x_821 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
        let x_824 : vec4<f32> = x_51.x_MainTex_TexelSize;
        let x_828 : vec4<f32> = u_xlat3;
        let x_830 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(2.0f, 0.0f)) + vec2<f32>(x_828.x, x_828.y));
        let x_831 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_834 : f32 = u_xlat4.y;
        u_xlat3.z = x_834;
      }
      let x_836 : vec4<f32> = u_xlat3;
      let x_837 : vec2<f32> = vec2<f32>(x_836.x, x_836.z);
      let x_838 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_838.x, x_837.x, x_837.y, x_838.w);
      let x_840 : vec4<f32> = u_xlat4;
      u_xlat14 = ((vec2<f32>(x_840.x, x_840.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
      let x_849 : vec2<f32> = u_xlat14;
      let x_850 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, x_849, 0.0f);
      u_xlat18 = x_850.w;
      let x_852 : f32 = u_xlat18;
      u_xlat18 = ((x_852 * -2.007874012f) + 3.25f);
      let x_856 : f32 = x_51.x_MainTex_TexelSize.x;
      let x_858 : f32 = u_xlat18;
      let x_861 : f32 = u_xlat4.y;
      u_xlat1.z = ((-(x_856) * x_858) + x_861);
      let x_865 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_867 : vec4<f32> = u_xlat1;
      let x_871 : vec2<f32> = vs_TEXCOORD1;
      u_xlat3 = ((vec4<f32>(x_865.z, x_865.z, x_865.z, x_865.z) * vec4<f32>(x_867.z, x_867.x, x_867.z, x_867.x)) + -(vec4<f32>(x_871.x, x_871.x, x_871.x, x_871.x)));
      let x_875 : vec4<f32> = u_xlat3;
      u_xlat3 = round(x_875);
      let x_877 : vec4<f32> = u_xlat3;
      u_xlat14 = sqrt(abs(vec2<f32>(x_877.w, x_877.z)));
      let x_884 : vec4<f32> = u_xlat1;
      let x_886 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_884.z, x_884.y), 0.0f, vec2<i32>(1i, 0i));
      u_xlat2.y = x_886.x;
      let x_889 : vec4<f32> = u_xlat2;
      let x_893 : vec2<f32> = (vec2<f32>(x_889.x, x_889.y) * vec2<f32>(4.0f, 4.0f));
      let x_894 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
      let x_896 : vec4<f32> = u_xlat2;
      let x_898 : vec2<f32> = round(vec2<f32>(x_896.x, x_896.y));
      let x_899 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
      let x_901 : vec4<f32> = u_xlat2;
      let x_906 : vec2<f32> = u_xlat14;
      let x_907 : vec2<f32> = ((vec2<f32>(x_901.x, x_901.y) * vec2<f32>(16.0f, 16.0f)) + x_906);
      let x_908 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
      let x_910 : vec4<f32> = u_xlat2;
      let x_915 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
      let x_916 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
      let x_921 : vec4<f32> = u_xlat2;
      let x_923 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_921.x, x_921.y), 0.0f);
      let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
      let x_925 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
      let x_927 : vec4<f32> = u_xlat3;
      let x_929 : vec4<f32> = u_xlat3;
      u_xlatb3 = (abs(x_927) >= abs(vec4<f32>(x_929.w, x_929.z, x_929.w, x_929.z)));
      let x_934 : bool = u_xlatb3.x;
      u_xlat3.x = select(0.0f, 1.0f, x_934);
      let x_938 : bool = u_xlatb3.y;
      u_xlat3.y = select(0.0f, 1.0f, x_938);
      let x_942 : bool = u_xlatb3.z;
      u_xlat3.z = select(0.0f, 0.75f, x_942);
      let x_947 : bool = u_xlatb3.w;
      u_xlat3.w = select(0.0f, 0.75f, x_947);
      let x_951 : f32 = u_xlat3.y;
      let x_953 : f32 = u_xlat3.x;
      u_xlat18 = (x_951 + x_953);
      let x_955 : vec4<f32> = u_xlat3;
      let x_957 : f32 = u_xlat18;
      u_xlat14 = (vec2<f32>(x_955.z, x_955.w) / vec2<f32>(x_957, x_957));
      let x_961 : f32 = vs_TEXCOORD0.y;
      u_xlat1.w = x_961;
      let x_966 : vec4<f32> = u_xlat1;
      let x_969 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_966.x, x_966.w), 0.0f, vec2<i32>(0i, 1i));
      u_xlat18 = x_969.x;
      let x_972 : f32 = u_xlat14.x;
      let x_974 : f32 = u_xlat18;
      u_xlat18 = ((-(x_972) * x_974) + 1.0f);
      let x_980 : vec4<f32> = u_xlat1;
      let x_983 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_980.z, x_980.w), 0.0f, vec2<i32>(1i, 1i));
      u_xlat7.x = x_983.x;
      let x_987 : f32 = u_xlat14.y;
      let x_990 : f32 = u_xlat7.x;
      let x_992 : f32 = u_xlat18;
      u_xlat3.x = ((-(x_987) * x_990) + x_992);
      let x_996 : f32 = u_xlat3.x;
      u_xlat3.x = clamp(x_996, 0.0f, 1.0f);
      let x_1002 : vec4<f32> = u_xlat1;
      let x_1006 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1002.x, x_1002.w), 0.0f, vec2<i32>(0i, -2i));
      u_xlat18 = x_1006.x;
      let x_1009 : f32 = u_xlat14.x;
      let x_1011 : f32 = u_xlat18;
      u_xlat18 = ((-(x_1009) * x_1011) + 1.0f);
      let x_1017 : vec4<f32> = u_xlat1;
      let x_1020 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1017.z, x_1017.w), 0.0f, vec2<i32>(1i, -2i));
      u_xlat1.x = x_1020.x;
      let x_1024 : f32 = u_xlat14.y;
      let x_1027 : f32 = u_xlat1.x;
      let x_1029 : f32 = u_xlat18;
      u_xlat3.y = ((-(x_1024) * x_1027) + x_1029);
      let x_1033 : f32 = u_xlat3.y;
      u_xlat3.y = clamp(x_1033, 0.0f, 1.0f);
      let x_1038 : vec4<f32> = u_xlat2;
      let x_1040 : vec4<f32> = u_xlat3;
      let x_1042 : vec2<f32> = (vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1040.x, x_1040.y));
      let x_1043 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
    } else {
      let x_1046 : vec3<f32> = u_xlat6;
      let x_1047 : vec2<f32> = vec2<f32>(x_1046.x, x_1046.y);
      let x_1048 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
      u_xlat0.x = 0.0f;
    }
  } else {
    let x_1053 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y, x_1053.z, x_1053.w);
  }
  let x_1057 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_1057);
  let x_1059 : bool = u_xlatb0;
  if (x_1059) {
    let x_1062 : vec4<f32> = vs_TEXCOORD3;
    let x_1063 : vec2<f32> = vec2<f32>(x_1062.x, x_1062.y);
    let x_1064 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1064.z, x_1064.w);
    u_xlat0.z = 1.0f;
    u_xlat1.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1074 : f32 = vs_TEXCOORD4.z;
      let x_1076 : f32 = u_xlat0.y;
      u_xlatb18 = (x_1074 < x_1076);
      let x_1079 : f32 = u_xlat0.z;
      u_xlatb19 = (0.828100026f < x_1079);
      let x_1081 : bool = u_xlatb18;
      let x_1082 : bool = u_xlatb19;
      u_xlatb18 = (x_1081 & x_1082);
      let x_1085 : f32 = u_xlat1.x;
      u_xlatb19 = (x_1085 == 0.0f);
      let x_1087 : bool = u_xlatb18;
      let x_1088 : bool = u_xlatb19;
      u_xlatb18 = (x_1087 & x_1088);
      let x_1090 : bool = u_xlatb18;
      if (!(x_1090)) {
        break;
      }
      let x_1098 : vec4<f32> = u_xlat0;
      let x_1100 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1098.x, x_1098.y), 0.0f);
      let x_1101 : vec2<f32> = vec2<f32>(x_1100.y, x_1100.x);
      let x_1102 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
      let x_1105 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_1109 : vec4<f32> = u_xlat0;
      let x_1111 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.y) * vec2<f32>(-0.0f, -2.0f)) + vec2<f32>(x_1109.x, x_1109.y));
      let x_1112 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
      let x_1115 : f32 = u_xlat1.y;
      u_xlat0.z = x_1115;
    }
    let x_1117 : vec4<f32> = u_xlat0;
    let x_1118 : vec2<f32> = vec2<f32>(x_1117.y, x_1117.z);
    let x_1119 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1119.x, x_1118.x, x_1118.y, x_1119.w);
    let x_1121 : vec4<f32> = u_xlat1;
    let x_1124 : vec2<f32> = ((vec2<f32>(x_1121.x, x_1121.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_1125 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
    let x_1130 : vec4<f32> = u_xlat0;
    let x_1132 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, vec2<f32>(x_1130.x, x_1130.y), 0.0f);
    u_xlat0.x = x_1132.w;
    let x_1136 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1136 * -2.007874012f) + 3.25f);
    let x_1141 : f32 = x_51.x_MainTex_TexelSize.y;
    let x_1143 : f32 = u_xlat0.x;
    let x_1146 : f32 = u_xlat1.y;
    u_xlat0.x = ((x_1141 * x_1143) + x_1146);
    let x_1150 : f32 = vs_TEXCOORD2.x;
    u_xlat0.y = x_1150;
    let x_1155 : vec4<f32> = u_xlat0;
    let x_1157 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1155.y, x_1155.x), 0.0f);
    u_xlat1.x = x_1157.y;
    let x_1160 : vec4<f32> = vs_TEXCOORD3;
    let x_1161 : vec2<f32> = vec2<f32>(x_1160.z, x_1160.w);
    let x_1162 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1173 : f32 = u_xlat2.y;
      let x_1175 : f32 = vs_TEXCOORD4.w;
      u_xlatb13 = (x_1173 < x_1175);
      let x_1178 : f32 = u_xlat2.z;
      u_xlatb19 = (0.828100026f < x_1178);
      let x_1180 : bool = u_xlatb19;
      let x_1181 : bool = u_xlatb13;
      u_xlatb13 = (x_1180 & x_1181);
      let x_1184 : f32 = u_xlat3.x;
      u_xlatb19 = (x_1184 == 0.0f);
      let x_1186 : bool = u_xlatb19;
      let x_1187 : bool = u_xlatb13;
      u_xlatb13 = (x_1186 & x_1187);
      let x_1189 : bool = u_xlatb13;
      if (!(x_1189)) {
        break;
      }
      let x_1197 : vec4<f32> = u_xlat2;
      let x_1199 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1197.x, x_1197.y), 0.0f);
      let x_1200 : vec2<f32> = vec2<f32>(x_1199.y, x_1199.x);
      let x_1201 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
      let x_1204 : vec4<f32> = x_51.x_MainTex_TexelSize;
      let x_1208 : vec4<f32> = u_xlat2;
      let x_1210 : vec2<f32> = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(0.0f, 2.0f)) + vec2<f32>(x_1208.x, x_1208.y));
      let x_1211 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_1210.x, x_1210.y, x_1211.z, x_1211.w);
      let x_1214 : f32 = u_xlat3.y;
      u_xlat2.z = x_1214;
    }
    let x_1216 : vec4<f32> = u_xlat2;
    let x_1217 : vec2<f32> = vec2<f32>(x_1216.y, x_1216.z);
    let x_1218 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1218.x, x_1217.x, x_1217.y, x_1218.w);
    let x_1221 : vec4<f32> = u_xlat3;
    u_xlat13 = ((vec2<f32>(x_1221.x, x_1221.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_1228 : vec2<f32> = u_xlat13;
    let x_1229 : vec4<f32> = textureSampleLevel(x_SearchTex, sampler_MainTex, x_1228, 0.0f);
    u_xlat13.x = x_1229.w;
    let x_1233 : f32 = u_xlat13.x;
    u_xlat13.x = ((x_1233 * -2.007874012f) + 3.25f);
    let x_1238 : f32 = x_51.x_MainTex_TexelSize.y;
    let x_1241 : f32 = u_xlat13.x;
    let x_1244 : f32 = u_xlat3.y;
    u_xlat0.z = ((-(x_1238) * x_1241) + x_1244);
    let x_1248 : vec4<f32> = x_51.x_MainTex_TexelSize;
    let x_1250 : vec4<f32> = u_xlat0;
    let x_1253 : vec2<f32> = vs_TEXCOORD1;
    u_xlat2 = ((vec4<f32>(x_1248.w, x_1248.w, x_1248.w, x_1248.w) * vec4<f32>(x_1250.z, x_1250.x, x_1250.z, x_1250.x)) + -(vec4<f32>(x_1253.y, x_1253.y, x_1253.y, x_1253.y)));
    let x_1257 : vec4<f32> = u_xlat2;
    u_xlat2 = round(x_1257);
    let x_1259 : vec4<f32> = u_xlat2;
    u_xlat13 = sqrt(abs(vec2<f32>(x_1259.w, x_1259.z)));
    let x_1266 : vec4<f32> = u_xlat0;
    let x_1268 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1266.y, x_1266.z), 0.0f, vec2<i32>(0i, 1i));
    u_xlat1.y = x_1268.y;
    let x_1271 : vec4<f32> = u_xlat1;
    let x_1273 : vec2<f32> = (vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(4.0f, 4.0f));
    let x_1274 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1273.x, x_1273.y, x_1274.z, x_1274.w);
    let x_1276 : vec4<f32> = u_xlat1;
    let x_1278 : vec2<f32> = round(vec2<f32>(x_1276.x, x_1276.y));
    let x_1279 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
    let x_1281 : vec4<f32> = u_xlat1;
    let x_1284 : vec2<f32> = u_xlat13;
    let x_1285 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(16.0f, 16.0f)) + x_1284);
    let x_1286 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
    let x_1288 : vec4<f32> = u_xlat1;
    let x_1291 : vec2<f32> = ((vec2<f32>(x_1288.x, x_1288.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
    let x_1292 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
    let x_1297 : vec4<f32> = u_xlat1;
    let x_1299 : vec4<f32> = textureSampleLevel(x_AreaTex, sampler_MainTex, vec2<f32>(x_1297.x, x_1297.y), 0.0f);
    let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
    let x_1301 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
    let x_1303 : vec4<f32> = u_xlat2;
    let x_1305 : vec4<f32> = u_xlat2;
    u_xlatb2 = (abs(x_1303) >= abs(vec4<f32>(x_1305.w, x_1305.z, x_1305.w, x_1305.z)));
    let x_1310 : bool = u_xlatb2.x;
    u_xlat2.x = select(0.0f, 1.0f, x_1310);
    let x_1314 : bool = u_xlatb2.y;
    u_xlat2.y = select(0.0f, 1.0f, x_1314);
    let x_1318 : bool = u_xlatb2.z;
    u_xlat2.z = select(0.0f, 0.75f, x_1318);
    let x_1322 : bool = u_xlatb2.w;
    u_xlat2.w = select(0.0f, 0.75f, x_1322);
    let x_1326 : f32 = u_xlat2.y;
    let x_1328 : f32 = u_xlat2.x;
    u_xlat6.x = (x_1326 + x_1328);
    let x_1331 : vec4<f32> = u_xlat2;
    let x_1333 : vec3<f32> = u_xlat6;
    u_xlat13 = (vec2<f32>(x_1331.z, x_1331.w) / vec2<f32>(x_1333.x, x_1333.x));
    let x_1337 : f32 = vs_TEXCOORD0.x;
    u_xlat0.w = x_1337;
    let x_1342 : vec4<f32> = u_xlat0;
    let x_1344 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1342.w, x_1342.x), 0.0f, vec2<i32>(1i, 0i));
    u_xlat6.x = x_1344.y;
    let x_1348 : f32 = u_xlat13.x;
    let x_1351 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1348) * x_1351) + 1.0f);
    let x_1358 : vec4<f32> = u_xlat0;
    let x_1360 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1358.w, x_1358.z), 0.0f, vec2<i32>(1i, 1i));
    u_xlat2.x = x_1360.y;
    let x_1364 : f32 = u_xlat13.y;
    let x_1367 : f32 = u_xlat2.x;
    let x_1370 : f32 = u_xlat6.x;
    u_xlat14.x = ((-(x_1364) * x_1367) + x_1370);
    let x_1374 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_1374, 0.0f, 1.0f);
    let x_1380 : vec4<f32> = u_xlat0;
    let x_1383 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1380.w, x_1380.x), 0.0f, vec2<i32>(-2i, 0i));
    u_xlat0.x = x_1383.y;
    let x_1387 : f32 = u_xlat13.x;
    let x_1390 : f32 = u_xlat0.x;
    u_xlat0.x = ((-(x_1387) * x_1390) + 1.0f);
    let x_1397 : vec4<f32> = u_xlat0;
    let x_1400 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_1397.w, x_1397.z), 0.0f, vec2<i32>(-2i, 1i));
    u_xlat6.x = x_1400.y;
    let x_1404 : f32 = u_xlat13.y;
    let x_1407 : f32 = u_xlat6.x;
    let x_1410 : f32 = u_xlat0.x;
    u_xlat14.y = ((-(x_1404) * x_1407) + x_1410);
    let x_1414 : f32 = u_xlat14.y;
    u_xlat14.y = clamp(x_1414, 0.0f, 1.0f);
    let x_1417 : vec4<f32> = u_xlat1;
    let x_1419 : vec2<f32> = u_xlat14;
    let x_1420 : vec2<f32> = (vec2<f32>(x_1417.x, x_1417.y) * x_1419);
    let x_1421 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1421.x, x_1421.y, x_1420.x, x_1420.y);
  } else {
    let x_1424 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1424.x, x_1424.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

