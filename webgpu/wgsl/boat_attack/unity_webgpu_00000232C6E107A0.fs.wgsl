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

var<private> u_xlatb6 : bool;

var<private> u_xlat1 : vec4<f32>;

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

@group(0) @binding(1) var x_AreaTexture : texture_2d<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb2 : vec4<bool>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_SearchTexture : texture_2d<f32>;

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
  var x_319 : f32;
  var x_329 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_643 : f32;
  var x_653 : f32;
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
  let x_45 : f32 = u_xlat0.y;
  u_xlatb6 = (0.0f < x_45);
  let x_47 : bool = u_xlatb6;
  if (x_47) {
    let x_51 : f32 = u_xlat0.x;
    u_xlatb6 = (0.0f < x_51);
    let x_53 : bool = u_xlatb6;
    if (x_53) {
      let x_60 : vec4<f32> = x_26.x_Metrics;
      let x_65 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) * vec2<f32>(-1.0f, 1.0f));
      let x_66 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
      u_xlat1.z = 1.0f;
      let x_71 : vec2<f32> = vs_TEXCOORD0;
      let x_72 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
      u_xlat6.x = 0.0f;
      u_xlat2.z = -1.0f;
      u_xlat3.x = 1.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_89 : f32 = u_xlat2.z;
        u_xlatb18 = (x_89 < 7.0f);
        let x_95 : f32 = u_xlat3.x;
        u_xlatb19 = (0.89999997615814208984f < x_95);
        let x_97 : bool = u_xlatb18;
        let x_98 : bool = u_xlatb19;
        u_xlatb18 = (x_97 & x_98);
        let x_100 : bool = u_xlatb18;
        if (!(x_100)) {
          break;
        }
        let x_105 : vec4<f32> = u_xlat1;
        let x_107 : vec4<f32> = u_xlat2;
        let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) + vec3<f32>(x_107.x, x_107.y, x_107.z));
        let x_110 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
        let x_115 : vec4<f32> = u_xlat2;
        let x_117 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_115.x, x_115.y), 0.0f);
        let x_118 : vec2<f32> = vec2<f32>(x_117.y, x_117.x);
        let x_119 : vec3<f32> = u_xlat6;
        u_xlat6 = vec3<f32>(x_118.x, x_118.y, x_119.z);
        let x_121 : vec3<f32> = u_xlat6;
        u_xlat3.x = dot(vec2<f32>(x_121.y, x_121.x), vec2<f32>(0.5f, 0.5f));
      }
      let x_128 : f32 = u_xlat6.x;
      u_xlatb6 = (0.89999997615814208984f < x_128);
      let x_130 : bool = u_xlatb6;
      u_xlat6.x = select(0.0f, 1.0f, x_130);
      let x_134 : f32 = u_xlat6.x;
      let x_136 : f32 = u_xlat2.z;
      u_xlat1.x = (x_134 + x_136);
    } else {
      u_xlat1.x = 0.0f;
      u_xlat3.x = 0.0f;
    }
    let x_143 : vec4<f32> = x_26.x_Metrics;
    let x_146 : vec2<f32> = (vec2<f32>(x_143.x, x_143.y) * vec2<f32>(1.0f, -1.0f));
    let x_147 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_146.x, x_146.y, x_147.z);
    u_xlat6.z = 1.0f;
    let x_150 : vec2<f32> = vs_TEXCOORD0;
    let x_151 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_151.x, x_150.x, x_150.y, x_151.w);
    u_xlat2.x = -1.0f;
    u_xlat20 = 1.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_162 : f32 = u_xlat2.x;
      u_xlatb15 = (x_162 < 7.0f);
      let x_165 : f32 = u_xlat20;
      u_xlatb21 = (0.89999997615814208984f < x_165);
      let x_167 : bool = u_xlatb21;
      let x_168 : bool = u_xlatb15;
      u_xlatb15 = (x_167 & x_168);
      let x_170 : bool = u_xlatb15;
      if (!(x_170)) {
        break;
      }
      let x_175 : vec3<f32> = u_xlat6;
      let x_177 : vec4<f32> = u_xlat2;
      let x_179 : vec3<f32> = (vec3<f32>(x_175.z, x_175.x, x_175.y) + vec3<f32>(x_177.x, x_177.y, x_177.z));
      let x_180 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
      let x_187 : vec4<f32> = u_xlat2;
      let x_189 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_187.y, x_187.z), 0.0f);
      u_xlat15 = vec2<f32>(x_189.x, x_189.y);
      let x_191 : vec2<f32> = u_xlat15;
      u_xlat20 = dot(x_191, vec2<f32>(0.5f, 0.5f));
    }
    let x_193 : f32 = u_xlat20;
    u_xlat3.y = x_193;
    let x_196 : f32 = u_xlat1.x;
    let x_198 : f32 = u_xlat2.x;
    u_xlat6.x = (x_196 + x_198);
    let x_203 : f32 = u_xlat6.x;
    u_xlatb6 = (2.0f < x_203);
    let x_205 : bool = u_xlatb6;
    if (x_205) {
      let x_209 : f32 = u_xlat1.x;
      u_xlat1.y = (-(x_209) + 0.25f);
      let x_214 : vec4<f32> = u_xlat2;
      let x_219 : vec2<f32> = ((vec2<f32>(x_214.x, x_214.x) * vec2<f32>(1.0f, -1.0f)) + vec2<f32>(0.0f, -0.25f));
      let x_220 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_219.x, x_219.y);
      let x_222 : vec4<f32> = u_xlat1;
      let x_225 : vec4<f32> = x_26.x_Metrics;
      let x_228 : vec2<f32> = vs_TEXCOORD0;
      u_xlat2 = ((vec4<f32>(x_222.y, x_222.x, x_222.z, x_222.w) * vec4<f32>(x_225.x, x_225.y, x_225.x, x_225.y)) + vec4<f32>(x_228.x, x_228.y, x_228.x, x_228.y));
      let x_232 : vec4<f32> = x_26.x_Metrics;
      let x_236 : vec4<f32> = u_xlat2;
      u_xlat2 = ((vec4<f32>(x_232.x, x_232.y, x_232.x, x_232.y) * vec4<f32>(-1.0f, 0.0f, 1.0f, 0.0f)) + x_236);
      let x_241 : vec4<f32> = u_xlat2;
      let x_243 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_241.x, x_241.y), 0.0f);
      let x_244 : vec2<f32> = vec2<f32>(x_243.x, x_243.y);
      let x_245 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_244.x, x_244.y, x_245.z);
      let x_251 : vec4<f32> = u_xlat2;
      let x_253 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_251.z, x_251.w), 0.0f);
      let x_254 : vec2<f32> = vec2<f32>(x_253.x, x_253.y);
      let x_255 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_254.x, x_255.y, x_254.y);
      let x_258 : f32 = u_xlat7.x;
      u_xlat6.z = x_258;
      let x_260 : vec3<f32> = u_xlat6;
      let x_267 : vec2<f32> = ((vec2<f32>(x_260.x, x_260.z) * vec2<f32>(5.0f, 5.0f)) + vec2<f32>(-3.75f, -3.75f));
      let x_268 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
      let x_270 : vec3<f32> = u_xlat6;
      let x_272 : vec4<f32> = u_xlat2;
      let x_275 : vec2<f32> = (vec2<f32>(x_270.x, x_270.z) * abs(vec2<f32>(x_272.x, x_272.y)));
      let x_276 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_275.x, x_276.y, x_275.y);
      let x_278 : vec3<f32> = u_xlat6;
      let x_280 : vec2<f32> = round(vec2<f32>(x_278.x, x_278.z));
      let x_281 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_280.x, x_281.y, x_280.y);
      let x_285 : f32 = u_xlat6.y;
      u_xlat8.x = round(x_285);
      let x_289 : f32 = u_xlat7.z;
      u_xlat8.z = round(x_289);
      let x_292 : vec3<f32> = u_xlat8;
      let x_296 : vec3<f32> = u_xlat6;
      let x_298 : vec2<f32> = ((vec2<f32>(x_292.x, x_292.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_296.x, x_296.z));
      let x_299 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_298.x, x_298.y, x_299.z);
      let x_304 : vec4<f32> = u_xlat3;
      let x_308 : vec4<bool> = (vec4<f32>(x_304.x, x_304.x, x_304.y, x_304.y) >= vec4<f32>(0.89999997615814208984f, 0.0f, 0.89999997615814208984f, 0.89999997615814208984f));
      let x_310 : vec2<bool> = vec2<bool>(x_308.x, x_308.z);
      let x_311 : vec3<bool> = u_xlatb7;
      u_xlatb7 = vec3<bool>(x_310.x, x_311.y, x_310.y);
      let x_315 : vec3<f32> = u_xlat6;
      hlslcc_movcTemp = x_315;
      let x_317 : bool = u_xlatb7.x;
      if (x_317) {
        x_319 = 0.0f;
      } else {
        let x_324 : f32 = u_xlat6.x;
        x_319 = x_324;
      }
      let x_325 : f32 = x_319;
      hlslcc_movcTemp.x = x_325;
      let x_328 : bool = u_xlatb7.z;
      if (x_328) {
        x_329 = 0.0f;
      } else {
        let x_334 : f32 = u_xlat6.y;
        x_329 = x_334;
      }
      let x_335 : f32 = x_329;
      hlslcc_movcTemp.y = x_335;
      let x_337 : vec3<f32> = hlslcc_movcTemp;
      u_xlat6 = x_337;
      let x_338 : vec3<f32> = u_xlat6;
      let x_343 : vec4<f32> = u_xlat1;
      let x_345 : vec2<f32> = ((vec2<f32>(x_338.x, x_338.y) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_343.x, x_343.z));
      let x_346 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_345.x, x_345.y, x_346.z);
      let x_348 : vec3<f32> = u_xlat6;
      let x_357 : vec2<f32> = ((vec2<f32>(x_348.x, x_348.y) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.50312501192092895508f, 0.00089285714784637094f));
      let x_358 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_357.x, x_357.y, x_358.z);
      let x_364 : vec3<f32> = u_xlat6;
      let x_366 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_364.x, x_364.y), 0.0f);
      let x_367 : vec2<f32> = vec2<f32>(x_366.x, x_366.y);
      let x_368 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_367.x, x_367.y, x_368.z);
    } else {
      u_xlat6.x = 0.0f;
      u_xlat6.y = 0.0f;
    }
    let x_375 : f32 = x_26.x_Metrics.x;
    let x_379 : f32 = vs_TEXCOORD0.x;
    u_xlat18 = ((x_375 * 0.25f) + x_379);
    let x_382 : vec4<f32> = x_26.x_Metrics;
    let x_384 : vec2<f32> = -(vec2<f32>(x_382.x, x_382.y));
    let x_385 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
    u_xlat1.z = 1.0f;
    let x_388 : f32 = u_xlat18;
    u_xlat8.x = x_388;
    let x_391 : f32 = vs_TEXCOORD0.y;
    u_xlat8.y = x_391;
    u_xlat2.x = 1.0f;
    u_xlat8.z = -1.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_401 : f32 = u_xlat8.z;
      u_xlatb19 = (x_401 < 7.0f);
      let x_406 : f32 = u_xlat2.x;
      u_xlatb3.x = (0.89999997615814208984f < x_406);
      let x_409 : bool = u_xlatb19;
      let x_411 : bool = u_xlatb3.x;
      u_xlatb19 = (x_409 & x_411);
      let x_413 : bool = u_xlatb19;
      if (!(x_413)) {
        break;
      }
      let x_418 : vec4<f32> = u_xlat1;
      let x_420 : vec3<f32> = u_xlat8;
      u_xlat8 = (vec3<f32>(x_418.x, x_418.y, x_418.z) + x_420);
      let x_425 : vec3<f32> = u_xlat8;
      let x_427 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_425.x, x_425.y), 0.0f);
      let x_428 : vec2<f32> = vec2<f32>(x_427.x, x_427.y);
      let x_429 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
      let x_433 : f32 = u_xlat3.x;
      u_xlat19 = ((x_433 * 5.0f) + -3.75f);
      let x_436 : f32 = u_xlat19;
      let x_439 : f32 = u_xlat3.x;
      u_xlat19 = (abs(x_436) * x_439);
      let x_442 : f32 = u_xlat19;
      u_xlat4.x = round(x_442);
      let x_446 : f32 = u_xlat3.y;
      u_xlat4.y = round(x_446);
      let x_449 : vec4<f32> = u_xlat4;
      u_xlat2.x = dot(vec2<f32>(x_449.x, x_449.y), vec2<f32>(0.5f, 0.5f));
    }
    let x_454 : f32 = u_xlat8.z;
    u_xlat1.x = x_454;
    let x_458 : vec4<f32> = x_26.x_Metrics;
    let x_462 : vec2<f32> = vs_TEXCOORD0;
    u_xlat14 = ((vec2<f32>(x_458.x, x_458.y) * vec2<f32>(1.0f, 0.0f)) + x_462);
    let x_467 : vec2<f32> = u_xlat14;
    let x_468 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_467, 0.0f);
    u_xlat19 = x_468.x;
    let x_470 : f32 = u_xlat19;
    u_xlatb19 = (0.0f < x_470);
    let x_472 : bool = u_xlatb19;
    if (x_472) {
      let x_476 : vec4<f32> = x_26.x_Metrics;
      let x_477 : vec2<f32> = vec2<f32>(x_476.x, x_476.y);
      let x_478 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_477.x, x_477.y, x_478.z, x_478.w);
      u_xlat3.z = 1.0f;
      let x_481 : f32 = u_xlat18;
      u_xlat4.x = x_481;
      let x_484 : f32 = vs_TEXCOORD0.y;
      u_xlat4.y = x_484;
      u_xlat4.z = -1.0f;
      u_xlat2.y = 1.0f;
      u_xlat14.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_495 : f32 = u_xlat4.z;
        u_xlatb19 = (x_495 < 7.0f);
        let x_498 : f32 = u_xlat2.y;
        u_xlatb21 = (0.89999997615814208984f < x_498);
        let x_500 : bool = u_xlatb19;
        let x_501 : bool = u_xlatb21;
        u_xlatb19 = (x_500 & x_501);
        let x_503 : bool = u_xlatb19;
        if (!(x_503)) {
          break;
        }
        let x_508 : vec4<f32> = u_xlat3;
        let x_510 : vec4<f32> = u_xlat4;
        let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_510.x, x_510.y, x_510.z));
        let x_513 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
        let x_519 : vec4<f32> = u_xlat4;
        let x_521 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_519.x, x_519.y), 0.0f);
        let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
        let x_523 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_526 : f32 = u_xlat5.x;
        u_xlat19 = ((x_526 * 5.0f) + -3.75f);
        let x_529 : f32 = u_xlat19;
        let x_532 : f32 = u_xlat5.x;
        u_xlat19 = (abs(x_529) * x_532);
        let x_534 : f32 = u_xlat19;
        u_xlat14.y = round(x_534);
        let x_538 : f32 = u_xlat5.y;
        u_xlat14.x = round(x_538);
        let x_541 : vec2<f32> = u_xlat14;
        u_xlat2.y = dot(vec2<f32>(x_541.y, x_541.x), vec2<f32>(0.5f, 0.5f));
      }
      let x_546 : f32 = u_xlat14.x;
      u_xlatb18 = (0.89999997615814208984f < x_546);
      let x_548 : bool = u_xlatb18;
      u_xlat18 = select(0.0f, 1.0f, x_548);
      let x_550 : f32 = u_xlat18;
      let x_552 : f32 = u_xlat4.z;
      u_xlat1.z = (x_550 + x_552);
    } else {
      u_xlat1.z = 0.0f;
      u_xlat2.y = 0.0f;
    }
    let x_559 : f32 = u_xlat1.z;
    let x_561 : f32 = u_xlat1.x;
    u_xlat18 = (x_559 + x_561);
    let x_563 : f32 = u_xlat18;
    u_xlatb18 = (2.0f < x_563);
    let x_565 : bool = u_xlatb18;
    if (x_565) {
      let x_569 : f32 = u_xlat1.x;
      u_xlat1.y = -(x_569);
      let x_572 : vec4<f32> = u_xlat1;
      let x_575 : vec4<f32> = x_26.x_Metrics;
      let x_578 : vec2<f32> = vs_TEXCOORD0;
      u_xlat3 = ((vec4<f32>(x_572.y, x_572.y, x_572.z, x_572.z) * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y)) + vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y));
      let x_582 : vec4<f32> = x_26.x_Metrics;
      let x_586 : vec4<f32> = u_xlat3;
      u_xlat4 = ((vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(-1.0f, 0.0f, 0.0f, -1.0f)) + vec4<f32>(x_586.x, x_586.y, x_586.x, x_586.y));
      let x_592 : vec4<f32> = u_xlat4;
      let x_594 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_592.x, x_592.y), 0.0f);
      u_xlat5.x = x_594.y;
      let x_600 : vec4<f32> = u_xlat4;
      let x_602 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_600.z, x_600.w), 0.0f);
      u_xlat5.z = x_602.x;
      let x_606 : vec4<f32> = x_26.x_Metrics;
      let x_609 : vec4<f32> = u_xlat3;
      let x_611 : vec2<f32> = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_609.z, x_609.w));
      let x_612 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_611.x, x_612.y, x_611.y);
      let x_617 : vec3<f32> = u_xlat7;
      let x_619 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_617.x, x_617.z), 0.0f);
      let x_620 : vec2<f32> = vec2<f32>(x_619.y, x_619.x);
      let x_621 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_621.x, x_620.x, x_621.z, x_620.y);
      let x_623 : vec4<f32> = u_xlat5;
      let x_626 : vec4<f32> = u_xlat5;
      let x_628 : vec2<f32> = ((vec2<f32>(x_623.x, x_623.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_626.z, x_626.w));
      let x_629 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_628.x, x_629.y, x_628.y);
      let x_632 : vec4<f32> = u_xlat2;
      let x_635 : vec4<bool> = (vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.x) >= vec4<f32>(0.89999997615814208984f, 0.89999997615814208984f, 0.0f, 0.0f));
      let x_636 : vec2<bool> = vec2<bool>(x_635.x, x_635.y);
      let x_637 : vec4<bool> = u_xlatb2;
      u_xlatb2 = vec4<bool>(x_636.x, x_636.y, x_637.z, x_637.w);
      let x_640 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_640;
      let x_642 : bool = u_xlatb2.x;
      if (x_642) {
        x_643 = 0.0f;
      } else {
        let x_648 : f32 = u_xlat7.x;
        x_643 = x_648;
      }
      let x_649 : f32 = x_643;
      hlslcc_movcTemp_1.x = x_649;
      let x_652 : bool = u_xlatb2.y;
      if (x_652) {
        x_653 = 0.0f;
      } else {
        let x_658 : f32 = u_xlat7.z;
        x_653 = x_658;
      }
      let x_659 : f32 = x_653;
      hlslcc_movcTemp_1.z = x_659;
      let x_661 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_661;
      let x_662 : vec3<f32> = u_xlat7;
      let x_665 : vec4<f32> = u_xlat1;
      let x_667 : vec2<f32> = ((vec2<f32>(x_662.x, x_662.z) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_665.x, x_665.z));
      let x_668 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
      let x_670 : vec4<f32> = u_xlat1;
      let x_673 : vec2<f32> = ((vec2<f32>(x_670.x, x_670.y) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.50312501192092895508f, 0.00089285714784637094f));
      let x_674 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
      let x_679 : vec4<f32> = u_xlat1;
      let x_681 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_679.x, x_679.y), 0.0f);
      let x_682 : vec2<f32> = vec2<f32>(x_681.x, x_681.y);
      let x_683 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
      let x_685 : vec3<f32> = u_xlat6;
      let x_687 : vec4<f32> = u_xlat1;
      let x_689 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) + vec2<f32>(x_687.y, x_687.x));
      let x_690 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_689.x, x_689.y, x_690.z);
    }
    let x_693 : f32 = u_xlat6.y;
    let x_696 : f32 = u_xlat6.x;
    u_xlatb18 = (-(x_693) == x_696);
    let x_698 : bool = u_xlatb18;
    if (x_698) {
      let x_703 : vec4<f32> = vs_TEXCOORD2;
      let x_704 : vec2<f32> = vec2<f32>(x_703.x, x_703.y);
      let x_705 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_705.z, x_705.w);
      u_xlat1.z = 1.0f;
      u_xlat2.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_716 : f32 = vs_TEXCOORD4.x;
        let x_718 : f32 = u_xlat1.x;
        u_xlatb18 = (x_716 < x_718);
        let x_722 : f32 = u_xlat1.z;
        u_xlatb19 = (0.82810002565383911133f < x_722);
        let x_724 : bool = u_xlatb18;
        let x_725 : bool = u_xlatb19;
        u_xlatb18 = (x_724 & x_725);
        let x_728 : f32 = u_xlat2.x;
        u_xlatb19 = (x_728 == 0.0f);
        let x_730 : bool = u_xlatb18;
        let x_731 : bool = u_xlatb19;
        u_xlatb18 = (x_730 & x_731);
        let x_733 : bool = u_xlatb18;
        if (!(x_733)) {
          break;
        }
        let x_741 : vec4<f32> = u_xlat1;
        let x_743 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_741.x, x_741.y), 0.0f);
        let x_744 : vec2<f32> = vec2<f32>(x_743.x, x_743.y);
        let x_745 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_748 : vec4<f32> = x_26.x_Metrics;
        let x_754 : vec4<f32> = u_xlat1;
        let x_756 : vec2<f32> = ((vec2<f32>(x_748.x, x_748.y) * vec2<f32>(-2.0f, -0.0f)) + vec2<f32>(x_754.x, x_754.y));
        let x_757 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_760 : f32 = u_xlat2.y;
        u_xlat1.z = x_760;
      }
      let x_762 : vec4<f32> = u_xlat1;
      let x_763 : vec2<f32> = vec2<f32>(x_762.x, x_762.z);
      let x_764 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_764.x, x_763.x, x_763.y, x_764.w);
      let x_766 : vec4<f32> = u_xlat2;
      let x_773 : vec2<f32> = ((vec2<f32>(x_766.x, x_766.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
      let x_774 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
      let x_780 : vec4<f32> = u_xlat1;
      let x_782 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_780.x, x_780.y), 0.0f);
      u_xlat18 = x_782.w;
      let x_785 : f32 = u_xlat18;
      u_xlat18 = ((x_785 * -2.00787401199340820312f) + 3.25f);
      let x_791 : f32 = x_26.x_Metrics.x;
      let x_792 : f32 = u_xlat18;
      let x_795 : f32 = u_xlat2.y;
      u_xlat1.x = ((x_791 * x_792) + x_795);
      let x_800 : f32 = vs_TEXCOORD3.y;
      u_xlat1.y = x_800;
      let x_805 : vec4<f32> = u_xlat1;
      let x_807 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_805.x, x_805.y), 0.0f);
      u_xlat2.x = x_807.x;
      let x_810 : vec4<f32> = vs_TEXCOORD2;
      let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
      let x_812 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
      u_xlat3.z = 1.0f;
      u_xlat4.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_822 : f32 = u_xlat3.x;
        let x_824 : f32 = vs_TEXCOORD4.y;
        u_xlatb18 = (x_822 < x_824);
        let x_828 : f32 = u_xlat3.z;
        u_xlatb14 = (0.82810002565383911133f < x_828);
        let x_830 : bool = u_xlatb18;
        let x_831 : bool = u_xlatb14;
        u_xlatb18 = (x_830 & x_831);
        let x_834 : f32 = u_xlat4.x;
        u_xlatb14 = (x_834 == 0.0f);
        let x_836 : bool = u_xlatb18;
        let x_837 : bool = u_xlatb14;
        u_xlatb18 = (x_836 & x_837);
        let x_839 : bool = u_xlatb18;
        if (!(x_839)) {
          break;
        }
        let x_847 : vec4<f32> = u_xlat3;
        let x_849 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_847.x, x_847.y), 0.0f);
        let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
        let x_851 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_850.x, x_850.y, x_851.z, x_851.w);
        let x_854 : vec4<f32> = x_26.x_Metrics;
        let x_858 : vec4<f32> = u_xlat3;
        let x_860 : vec2<f32> = ((vec2<f32>(x_854.x, x_854.y) * vec2<f32>(2.0f, 0.0f)) + vec2<f32>(x_858.x, x_858.y));
        let x_861 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_861.w);
        let x_864 : f32 = u_xlat4.y;
        u_xlat3.z = x_864;
      }
      let x_866 : vec4<f32> = u_xlat3;
      let x_867 : vec2<f32> = vec2<f32>(x_866.x, x_866.z);
      let x_868 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_868.x, x_867.x, x_867.y, x_868.w);
      let x_870 : vec4<f32> = u_xlat4;
      u_xlat14 = ((vec2<f32>(x_870.x, x_870.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
      let x_879 : vec2<f32> = u_xlat14;
      let x_880 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, x_879, 0.0f);
      u_xlat18 = x_880.w;
      let x_882 : f32 = u_xlat18;
      u_xlat18 = ((x_882 * -2.00787401199340820312f) + 3.25f);
      let x_886 : f32 = x_26.x_Metrics.x;
      let x_888 : f32 = u_xlat18;
      let x_891 : f32 = u_xlat4.y;
      u_xlat1.z = ((-(x_886) * x_888) + x_891);
      let x_895 : vec4<f32> = x_26.x_Metrics;
      let x_897 : vec4<f32> = u_xlat1;
      let x_901 : vec2<f32> = vs_TEXCOORD1;
      u_xlat3 = ((vec4<f32>(x_895.z, x_895.z, x_895.z, x_895.z) * vec4<f32>(x_897.z, x_897.x, x_897.z, x_897.x)) + -(vec4<f32>(x_901.x, x_901.x, x_901.x, x_901.x)));
      let x_905 : vec4<f32> = u_xlat3;
      u_xlat3 = round(x_905);
      let x_907 : vec4<f32> = u_xlat3;
      u_xlat14 = sqrt(abs(vec2<f32>(x_907.w, x_907.z)));
      let x_912 : vec4<f32> = x_26.x_Metrics;
      let x_915 : vec4<f32> = u_xlat1;
      let x_917 : vec2<f32> = ((vec2<f32>(x_912.x, x_912.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_915.z, x_915.y));
      let x_918 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_917.x, x_917.y, x_918.z, x_918.w);
      let x_923 : vec4<f32> = u_xlat4;
      let x_925 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_923.x, x_923.y), 0.0f);
      u_xlat2.y = x_925.x;
      let x_928 : vec4<f32> = u_xlat2;
      let x_932 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(4.0f, 4.0f));
      let x_933 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
      let x_935 : vec4<f32> = u_xlat2;
      let x_937 : vec2<f32> = round(vec2<f32>(x_935.x, x_935.y));
      let x_938 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_938.z, x_938.w);
      let x_940 : vec4<f32> = u_xlat2;
      let x_945 : vec2<f32> = u_xlat14;
      let x_946 : vec2<f32> = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(16.0f, 16.0f)) + x_945);
      let x_947 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_946.x, x_946.y, x_947.z, x_947.w);
      let x_949 : vec4<f32> = u_xlat2;
      let x_954 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.y) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.00312500004656612873f, 0.00089285714784637094f));
      let x_955 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
      let x_960 : vec4<f32> = u_xlat2;
      let x_962 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_960.x, x_960.y), 0.0f);
      let x_963 : vec2<f32> = vec2<f32>(x_962.x, x_962.y);
      let x_964 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_964.z, x_964.w);
      let x_966 : vec4<f32> = u_xlat3;
      let x_968 : vec4<f32> = u_xlat3;
      u_xlatb3 = (abs(x_966) >= abs(vec4<f32>(x_968.w, x_968.z, x_968.w, x_968.z)));
      let x_973 : bool = u_xlatb3.x;
      u_xlat3.x = select(0.0f, 1.0f, x_973);
      let x_977 : bool = u_xlatb3.y;
      u_xlat3.y = select(0.0f, 1.0f, x_977);
      let x_981 : bool = u_xlatb3.z;
      u_xlat3.z = select(0.0f, 0.75f, x_981);
      let x_986 : bool = u_xlatb3.w;
      u_xlat3.w = select(0.0f, 0.75f, x_986);
      let x_990 : f32 = u_xlat3.y;
      let x_992 : f32 = u_xlat3.x;
      u_xlat18 = (x_990 + x_992);
      let x_994 : vec4<f32> = u_xlat3;
      let x_996 : f32 = u_xlat18;
      u_xlat14 = (vec2<f32>(x_994.z, x_994.w) / vec2<f32>(x_996, x_996));
      let x_1000 : f32 = vs_TEXCOORD0.y;
      u_xlat1.w = x_1000;
      let x_1003 : vec4<f32> = x_26.x_Metrics;
      let x_1007 : vec4<f32> = u_xlat1;
      let x_1009 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.y) * vec2<f32>(0.0f, 1.0f)) + vec2<f32>(x_1007.x, x_1007.w));
      let x_1010 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1010.w);
      let x_1015 : vec4<f32> = u_xlat3;
      let x_1017 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1015.x, x_1015.y), 0.0f);
      u_xlat18 = x_1017.x;
      let x_1020 : f32 = u_xlat14.x;
      let x_1022 : f32 = u_xlat18;
      u_xlat18 = ((-(x_1020) * x_1022) + 1.0f);
      let x_1025 : vec4<f32> = u_xlat1;
      let x_1028 : vec4<f32> = x_26.x_Metrics;
      let x_1030 : vec2<f32> = (vec2<f32>(x_1025.z, x_1025.w) + vec2<f32>(x_1028.x, x_1028.y));
      let x_1031 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
      let x_1036 : vec4<f32> = u_xlat3;
      let x_1038 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1036.x, x_1036.y), 0.0f);
      u_xlat7.x = x_1038.x;
      let x_1042 : f32 = u_xlat14.y;
      let x_1045 : f32 = u_xlat7.x;
      let x_1047 : f32 = u_xlat18;
      u_xlat3.x = ((-(x_1042) * x_1045) + x_1047);
      let x_1051 : f32 = u_xlat3.x;
      u_xlat3.x = clamp(x_1051, 0.0f, 1.0f);
      let x_1055 : vec4<f32> = x_26.x_Metrics;
      let x_1059 : vec4<f32> = u_xlat1;
      u_xlat1 = ((vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y) * vec4<f32>(0.0f, -2.0f, 1.0f, -2.0f)) + vec4<f32>(x_1059.x, x_1059.w, x_1059.z, x_1059.w));
      let x_1065 : vec4<f32> = u_xlat1;
      let x_1067 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1065.x, x_1065.y), 0.0f);
      u_xlat18 = x_1067.x;
      let x_1070 : f32 = u_xlat14.x;
      let x_1072 : f32 = u_xlat18;
      u_xlat18 = ((-(x_1070) * x_1072) + 1.0f);
      let x_1078 : vec4<f32> = u_xlat1;
      let x_1080 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1078.z, x_1078.w), 0.0f);
      u_xlat1.x = x_1080.x;
      let x_1084 : f32 = u_xlat14.y;
      let x_1087 : f32 = u_xlat1.x;
      let x_1089 : f32 = u_xlat18;
      u_xlat3.y = ((-(x_1084) * x_1087) + x_1089);
      let x_1093 : f32 = u_xlat3.y;
      u_xlat3.y = clamp(x_1093, 0.0f, 1.0f);
      let x_1098 : vec4<f32> = u_xlat2;
      let x_1100 : vec4<f32> = u_xlat3;
      let x_1102 : vec2<f32> = (vec2<f32>(x_1098.x, x_1098.y) * vec2<f32>(x_1100.x, x_1100.y));
      let x_1103 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1103.w);
    } else {
      let x_1106 : vec3<f32> = u_xlat6;
      let x_1107 : vec2<f32> = vec2<f32>(x_1106.x, x_1106.y);
      let x_1108 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
      u_xlat0.x = 0.0f;
    }
  } else {
    let x_1113 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y, x_1113.z, x_1113.w);
  }
  let x_1117 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_1117);
  let x_1119 : bool = u_xlatb0;
  if (x_1119) {
    let x_1122 : vec4<f32> = vs_TEXCOORD3;
    let x_1123 : vec2<f32> = vec2<f32>(x_1122.x, x_1122.y);
    let x_1124 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
    u_xlat0.z = 1.0f;
    u_xlat1.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1134 : f32 = vs_TEXCOORD4.z;
      let x_1136 : f32 = u_xlat0.y;
      u_xlatb18 = (x_1134 < x_1136);
      let x_1139 : f32 = u_xlat0.z;
      u_xlatb19 = (0.82810002565383911133f < x_1139);
      let x_1141 : bool = u_xlatb18;
      let x_1142 : bool = u_xlatb19;
      u_xlatb18 = (x_1141 & x_1142);
      let x_1145 : f32 = u_xlat1.x;
      u_xlatb19 = (x_1145 == 0.0f);
      let x_1147 : bool = u_xlatb18;
      let x_1148 : bool = u_xlatb19;
      u_xlatb18 = (x_1147 & x_1148);
      let x_1150 : bool = u_xlatb18;
      if (!(x_1150)) {
        break;
      }
      let x_1158 : vec4<f32> = u_xlat0;
      let x_1160 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1158.x, x_1158.y), 0.0f);
      let x_1161 : vec2<f32> = vec2<f32>(x_1160.y, x_1160.x);
      let x_1162 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
      let x_1165 : vec4<f32> = x_26.x_Metrics;
      let x_1169 : vec4<f32> = u_xlat0;
      let x_1171 : vec2<f32> = ((vec2<f32>(x_1165.x, x_1165.y) * vec2<f32>(-0.0f, -2.0f)) + vec2<f32>(x_1169.x, x_1169.y));
      let x_1172 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
      let x_1175 : f32 = u_xlat1.y;
      u_xlat0.z = x_1175;
    }
    let x_1177 : vec4<f32> = u_xlat0;
    let x_1178 : vec2<f32> = vec2<f32>(x_1177.y, x_1177.z);
    let x_1179 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1179.x, x_1178.x, x_1178.y, x_1179.w);
    let x_1181 : vec4<f32> = u_xlat1;
    let x_1184 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_1185 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1185.w);
    let x_1190 : vec4<f32> = u_xlat0;
    let x_1192 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_1190.x, x_1190.y), 0.0f);
    u_xlat0.x = x_1192.w;
    let x_1196 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1196 * -2.00787401199340820312f) + 3.25f);
    let x_1201 : f32 = x_26.x_Metrics.y;
    let x_1203 : f32 = u_xlat0.x;
    let x_1206 : f32 = u_xlat1.y;
    u_xlat0.x = ((x_1201 * x_1203) + x_1206);
    let x_1210 : f32 = vs_TEXCOORD2.x;
    u_xlat0.y = x_1210;
    let x_1215 : vec4<f32> = u_xlat0;
    let x_1217 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1215.y, x_1215.x), 0.0f);
    u_xlat1.x = x_1217.y;
    let x_1220 : vec4<f32> = vs_TEXCOORD3;
    let x_1221 : vec2<f32> = vec2<f32>(x_1220.z, x_1220.w);
    let x_1222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1221.x, x_1221.y, x_1222.z, x_1222.w);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1233 : f32 = u_xlat2.y;
      let x_1235 : f32 = vs_TEXCOORD4.w;
      u_xlatb13 = (x_1233 < x_1235);
      let x_1238 : f32 = u_xlat2.z;
      u_xlatb19 = (0.82810002565383911133f < x_1238);
      let x_1240 : bool = u_xlatb19;
      let x_1241 : bool = u_xlatb13;
      u_xlatb13 = (x_1240 & x_1241);
      let x_1244 : f32 = u_xlat3.x;
      u_xlatb19 = (x_1244 == 0.0f);
      let x_1246 : bool = u_xlatb19;
      let x_1247 : bool = u_xlatb13;
      u_xlatb13 = (x_1246 & x_1247);
      let x_1249 : bool = u_xlatb13;
      if (!(x_1249)) {
        break;
      }
      let x_1257 : vec4<f32> = u_xlat2;
      let x_1259 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1257.x, x_1257.y), 0.0f);
      let x_1260 : vec2<f32> = vec2<f32>(x_1259.y, x_1259.x);
      let x_1261 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
      let x_1264 : vec4<f32> = x_26.x_Metrics;
      let x_1268 : vec4<f32> = u_xlat2;
      let x_1270 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(0.0f, 2.0f)) + vec2<f32>(x_1268.x, x_1268.y));
      let x_1271 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
      let x_1274 : f32 = u_xlat3.y;
      u_xlat2.z = x_1274;
    }
    let x_1276 : vec4<f32> = u_xlat2;
    let x_1277 : vec2<f32> = vec2<f32>(x_1276.y, x_1276.z);
    let x_1278 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1278.x, x_1277.x, x_1277.y, x_1278.w);
    let x_1281 : vec4<f32> = u_xlat3;
    u_xlat13 = ((vec2<f32>(x_1281.x, x_1281.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_1288 : vec2<f32> = u_xlat13;
    let x_1289 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, x_1288, 0.0f);
    u_xlat13.x = x_1289.w;
    let x_1293 : f32 = u_xlat13.x;
    u_xlat13.x = ((x_1293 * -2.00787401199340820312f) + 3.25f);
    let x_1298 : f32 = x_26.x_Metrics.y;
    let x_1301 : f32 = u_xlat13.x;
    let x_1304 : f32 = u_xlat3.y;
    u_xlat0.z = ((-(x_1298) * x_1301) + x_1304);
    let x_1308 : vec4<f32> = x_26.x_Metrics;
    let x_1310 : vec4<f32> = u_xlat0;
    let x_1313 : vec2<f32> = vs_TEXCOORD1;
    u_xlat2 = ((vec4<f32>(x_1308.w, x_1308.w, x_1308.w, x_1308.w) * vec4<f32>(x_1310.z, x_1310.x, x_1310.z, x_1310.x)) + -(vec4<f32>(x_1313.y, x_1313.y, x_1313.y, x_1313.y)));
    let x_1317 : vec4<f32> = u_xlat2;
    u_xlat2 = round(x_1317);
    let x_1319 : vec4<f32> = u_xlat2;
    u_xlat13 = sqrt(abs(vec2<f32>(x_1319.w, x_1319.z)));
    let x_1324 : vec4<f32> = x_26.x_Metrics;
    let x_1327 : vec4<f32> = u_xlat0;
    let x_1329 : vec2<f32> = ((vec2<f32>(x_1324.x, x_1324.y) * vec2<f32>(0.0f, 1.0f)) + vec2<f32>(x_1327.y, x_1327.z));
    let x_1330 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
    let x_1335 : vec4<f32> = u_xlat3;
    let x_1337 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1335.x, x_1335.y), 0.0f);
    u_xlat1.y = x_1337.y;
    let x_1340 : vec4<f32> = u_xlat1;
    let x_1342 : vec2<f32> = (vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(4.0f, 4.0f));
    let x_1343 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1343.w);
    let x_1345 : vec4<f32> = u_xlat1;
    let x_1347 : vec2<f32> = round(vec2<f32>(x_1345.x, x_1345.y));
    let x_1348 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1347.x, x_1347.y, x_1348.z, x_1348.w);
    let x_1350 : vec4<f32> = u_xlat1;
    let x_1353 : vec2<f32> = u_xlat13;
    let x_1354 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(16.0f, 16.0f)) + x_1353);
    let x_1355 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
    let x_1357 : vec4<f32> = u_xlat1;
    let x_1360 : vec2<f32> = ((vec2<f32>(x_1357.x, x_1357.y) * vec2<f32>(0.00625000009313225746f, 0.00178571429569274187f)) + vec2<f32>(0.00312500004656612873f, 0.00089285714784637094f));
    let x_1361 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1360.x, x_1360.y, x_1361.z, x_1361.w);
    let x_1366 : vec4<f32> = u_xlat1;
    let x_1368 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_1366.x, x_1366.y), 0.0f);
    let x_1369 : vec2<f32> = vec2<f32>(x_1368.x, x_1368.y);
    let x_1370 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1369.x, x_1369.y, x_1370.z, x_1370.w);
    let x_1372 : vec4<f32> = u_xlat2;
    let x_1374 : vec4<f32> = u_xlat2;
    u_xlatb2 = (abs(x_1372) >= abs(vec4<f32>(x_1374.w, x_1374.z, x_1374.w, x_1374.z)));
    let x_1379 : bool = u_xlatb2.x;
    u_xlat2.x = select(0.0f, 1.0f, x_1379);
    let x_1383 : bool = u_xlatb2.y;
    u_xlat2.y = select(0.0f, 1.0f, x_1383);
    let x_1387 : bool = u_xlatb2.z;
    u_xlat2.z = select(0.0f, 0.75f, x_1387);
    let x_1391 : bool = u_xlatb2.w;
    u_xlat2.w = select(0.0f, 0.75f, x_1391);
    let x_1395 : f32 = u_xlat2.y;
    let x_1397 : f32 = u_xlat2.x;
    u_xlat6.x = (x_1395 + x_1397);
    let x_1400 : vec4<f32> = u_xlat2;
    let x_1402 : vec3<f32> = u_xlat6;
    u_xlat13 = (vec2<f32>(x_1400.z, x_1400.w) / vec2<f32>(x_1402.x, x_1402.x));
    let x_1406 : f32 = vs_TEXCOORD0.x;
    u_xlat0.w = x_1406;
    let x_1409 : vec4<f32> = x_26.x_Metrics;
    let x_1412 : vec4<f32> = u_xlat0;
    let x_1414 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_1412.w, x_1412.x));
    let x_1415 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
    let x_1420 : vec4<f32> = u_xlat2;
    let x_1422 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1420.x, x_1420.y), 0.0f);
    u_xlat6.x = x_1422.y;
    let x_1426 : f32 = u_xlat13.x;
    let x_1429 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1426) * x_1429) + 1.0f);
    let x_1433 : vec4<f32> = u_xlat0;
    let x_1436 : vec4<f32> = x_26.x_Metrics;
    let x_1438 : vec2<f32> = (vec2<f32>(x_1433.w, x_1433.z) + vec2<f32>(x_1436.x, x_1436.y));
    let x_1439 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1438.x, x_1438.y, x_1439.z, x_1439.w);
    let x_1444 : vec4<f32> = u_xlat2;
    let x_1446 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1444.x, x_1444.y), 0.0f);
    u_xlat2.x = x_1446.y;
    let x_1450 : f32 = u_xlat13.y;
    let x_1453 : f32 = u_xlat2.x;
    let x_1456 : f32 = u_xlat6.x;
    u_xlat14.x = ((-(x_1450) * x_1453) + x_1456);
    let x_1460 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_1460, 0.0f, 1.0f);
    let x_1464 : vec4<f32> = x_26.x_Metrics;
    let x_1468 : vec4<f32> = u_xlat0;
    u_xlat0 = ((vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y) * vec4<f32>(-2.0f, 0.0f, -2.0f, 1.0f)) + vec4<f32>(x_1468.w, x_1468.x, x_1468.w, x_1468.z));
    let x_1474 : vec4<f32> = u_xlat0;
    let x_1476 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1474.x, x_1474.y), 0.0f);
    u_xlat0.x = x_1476.y;
    let x_1480 : f32 = u_xlat13.x;
    let x_1483 : f32 = u_xlat0.x;
    u_xlat0.x = ((-(x_1480) * x_1483) + 1.0f);
    let x_1490 : vec4<f32> = u_xlat0;
    let x_1492 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1490.z, x_1490.w), 0.0f);
    u_xlat6.x = x_1492.y;
    let x_1496 : f32 = u_xlat13.y;
    let x_1499 : f32 = u_xlat6.x;
    let x_1502 : f32 = u_xlat0.x;
    u_xlat14.y = ((-(x_1496) * x_1499) + x_1502);
    let x_1506 : f32 = u_xlat14.y;
    u_xlat14.y = clamp(x_1506, 0.0f, 1.0f);
    let x_1509 : vec4<f32> = u_xlat1;
    let x_1511 : vec2<f32> = u_xlat14;
    let x_1512 : vec2<f32> = (vec2<f32>(x_1509.x, x_1509.y) * x_1511);
    let x_1513 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1513.x, x_1513.y, x_1512.x, x_1512.y);
  } else {
    let x_1516 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1516.x, x_1516.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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


