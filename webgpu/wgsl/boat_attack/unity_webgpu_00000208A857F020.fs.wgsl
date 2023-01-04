struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Metrics : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AreaTexture : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_SearchTexture : texture_2d<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlatb19 : bool;
  var u_xlat20 : f32;
  var u_xlatb15 : bool;
  var u_xlatb21 : bool;
  var u_xlat15 : vec2<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb7 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_317 : f32;
  var x_327 : f32;
  var u_xlat18 : f32;
  var u_xlatb3 : vec4<bool>;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_641 : f32;
  var x_651 : f32;
  var u_xlatb14 : bool;
  var u_xlatb0 : bool;
  var u_xlatb13 : bool;
  var u_xlat13 : vec2<f32>;
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
        u_xlatb19 = (0.899999976f < x_95);
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
      u_xlatb6 = (0.899999976f < x_128);
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
      u_xlatb21 = (0.899999976f < x_165);
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
      let x_308 : vec4<bool> = (vec4<f32>(x_304.x, x_304.x, x_304.y, x_304.y) >= vec4<f32>(0.899999976f, 0.0f, 0.899999976f, 0.899999976f));
      let x_310 : vec2<bool> = vec2<bool>(x_308.x, x_308.z);
      let x_311 : vec3<bool> = u_xlatb7;
      u_xlatb7 = vec3<bool>(x_310.x, x_311.y, x_310.y);
      let x_314 : vec3<f32> = u_xlat6;
      hlslcc_movcTemp = x_314;
      let x_316 : bool = u_xlatb7.x;
      if (x_316) {
        x_317 = 0.0f;
      } else {
        let x_322 : f32 = u_xlat6.x;
        x_317 = x_322;
      }
      let x_323 : f32 = x_317;
      hlslcc_movcTemp.x = x_323;
      let x_326 : bool = u_xlatb7.z;
      if (x_326) {
        x_327 = 0.0f;
      } else {
        let x_332 : f32 = u_xlat6.y;
        x_327 = x_332;
      }
      let x_333 : f32 = x_327;
      hlslcc_movcTemp.y = x_333;
      let x_335 : vec3<f32> = hlslcc_movcTemp;
      u_xlat6 = x_335;
      let x_336 : vec3<f32> = u_xlat6;
      let x_341 : vec4<f32> = u_xlat1;
      let x_343 : vec2<f32> = ((vec2<f32>(x_336.x, x_336.y) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_341.x, x_341.z));
      let x_344 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_343.x, x_343.y, x_344.z);
      let x_346 : vec3<f32> = u_xlat6;
      let x_355 : vec2<f32> = ((vec2<f32>(x_346.x, x_346.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.503125012f, 0.000892857148f));
      let x_356 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_355.x, x_355.y, x_356.z);
      let x_362 : vec3<f32> = u_xlat6;
      let x_364 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_362.x, x_362.y), 0.0f);
      let x_365 : vec2<f32> = vec2<f32>(x_364.x, x_364.y);
      let x_366 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_365.x, x_365.y, x_366.z);
    } else {
      u_xlat6.x = 0.0f;
      u_xlat6.y = 0.0f;
    }
    let x_373 : f32 = x_26.x_Metrics.x;
    let x_377 : f32 = vs_TEXCOORD0.x;
    u_xlat18 = ((x_373 * 0.25f) + x_377);
    let x_380 : vec4<f32> = x_26.x_Metrics;
    let x_382 : vec2<f32> = -(vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    u_xlat1.z = 1.0f;
    let x_386 : f32 = u_xlat18;
    u_xlat8.x = x_386;
    let x_389 : f32 = vs_TEXCOORD0.y;
    u_xlat8.y = x_389;
    u_xlat2.x = 1.0f;
    u_xlat8.z = -1.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_399 : f32 = u_xlat8.z;
      u_xlatb19 = (x_399 < 7.0f);
      let x_404 : f32 = u_xlat2.x;
      u_xlatb3.x = (0.899999976f < x_404);
      let x_407 : bool = u_xlatb19;
      let x_409 : bool = u_xlatb3.x;
      u_xlatb19 = (x_407 & x_409);
      let x_411 : bool = u_xlatb19;
      if (!(x_411)) {
        break;
      }
      let x_416 : vec4<f32> = u_xlat1;
      let x_418 : vec3<f32> = u_xlat8;
      u_xlat8 = (vec3<f32>(x_416.x, x_416.y, x_416.z) + x_418);
      let x_423 : vec3<f32> = u_xlat8;
      let x_425 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_423.x, x_423.y), 0.0f);
      let x_426 : vec2<f32> = vec2<f32>(x_425.x, x_425.y);
      let x_427 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
      let x_431 : f32 = u_xlat3.x;
      u_xlat19 = ((x_431 * 5.0f) + -3.75f);
      let x_434 : f32 = u_xlat19;
      let x_437 : f32 = u_xlat3.x;
      u_xlat19 = (abs(x_434) * x_437);
      let x_440 : f32 = u_xlat19;
      u_xlat4.x = round(x_440);
      let x_444 : f32 = u_xlat3.y;
      u_xlat4.y = round(x_444);
      let x_447 : vec4<f32> = u_xlat4;
      u_xlat2.x = dot(vec2<f32>(x_447.x, x_447.y), vec2<f32>(0.5f, 0.5f));
    }
    let x_452 : f32 = u_xlat8.z;
    u_xlat1.x = x_452;
    let x_456 : vec4<f32> = x_26.x_Metrics;
    let x_460 : vec2<f32> = vs_TEXCOORD0;
    u_xlat14 = ((vec2<f32>(x_456.x, x_456.y) * vec2<f32>(1.0f, 0.0f)) + x_460);
    let x_465 : vec2<f32> = u_xlat14;
    let x_466 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_465, 0.0f);
    u_xlat19 = x_466.x;
    let x_468 : f32 = u_xlat19;
    u_xlatb19 = (0.0f < x_468);
    let x_470 : bool = u_xlatb19;
    if (x_470) {
      let x_474 : vec4<f32> = x_26.x_Metrics;
      let x_475 : vec2<f32> = vec2<f32>(x_474.x, x_474.y);
      let x_476 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
      u_xlat3.z = 1.0f;
      let x_479 : f32 = u_xlat18;
      u_xlat4.x = x_479;
      let x_482 : f32 = vs_TEXCOORD0.y;
      u_xlat4.y = x_482;
      u_xlat4.z = -1.0f;
      u_xlat2.y = 1.0f;
      u_xlat14.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_493 : f32 = u_xlat4.z;
        u_xlatb19 = (x_493 < 7.0f);
        let x_496 : f32 = u_xlat2.y;
        u_xlatb21 = (0.899999976f < x_496);
        let x_498 : bool = u_xlatb19;
        let x_499 : bool = u_xlatb21;
        u_xlatb19 = (x_498 & x_499);
        let x_501 : bool = u_xlatb19;
        if (!(x_501)) {
          break;
        }
        let x_506 : vec4<f32> = u_xlat3;
        let x_508 : vec4<f32> = u_xlat4;
        let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) + vec3<f32>(x_508.x, x_508.y, x_508.z));
        let x_511 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
        let x_517 : vec4<f32> = u_xlat4;
        let x_519 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_517.x, x_517.y), 0.0f);
        let x_520 : vec2<f32> = vec2<f32>(x_519.x, x_519.y);
        let x_521 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_521.z, x_521.w);
        let x_524 : f32 = u_xlat5.x;
        u_xlat19 = ((x_524 * 5.0f) + -3.75f);
        let x_527 : f32 = u_xlat19;
        let x_530 : f32 = u_xlat5.x;
        u_xlat19 = (abs(x_527) * x_530);
        let x_532 : f32 = u_xlat19;
        u_xlat14.y = round(x_532);
        let x_536 : f32 = u_xlat5.y;
        u_xlat14.x = round(x_536);
        let x_539 : vec2<f32> = u_xlat14;
        u_xlat2.y = dot(vec2<f32>(x_539.y, x_539.x), vec2<f32>(0.5f, 0.5f));
      }
      let x_544 : f32 = u_xlat14.x;
      u_xlatb18 = (0.899999976f < x_544);
      let x_546 : bool = u_xlatb18;
      u_xlat18 = select(0.0f, 1.0f, x_546);
      let x_548 : f32 = u_xlat18;
      let x_550 : f32 = u_xlat4.z;
      u_xlat1.z = (x_548 + x_550);
    } else {
      u_xlat1.z = 0.0f;
      u_xlat2.y = 0.0f;
    }
    let x_557 : f32 = u_xlat1.z;
    let x_559 : f32 = u_xlat1.x;
    u_xlat18 = (x_557 + x_559);
    let x_561 : f32 = u_xlat18;
    u_xlatb18 = (2.0f < x_561);
    let x_563 : bool = u_xlatb18;
    if (x_563) {
      let x_567 : f32 = u_xlat1.x;
      u_xlat1.y = -(x_567);
      let x_570 : vec4<f32> = u_xlat1;
      let x_573 : vec4<f32> = x_26.x_Metrics;
      let x_576 : vec2<f32> = vs_TEXCOORD0;
      u_xlat3 = ((vec4<f32>(x_570.y, x_570.y, x_570.z, x_570.z) * vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y)) + vec4<f32>(x_576.x, x_576.y, x_576.x, x_576.y));
      let x_580 : vec4<f32> = x_26.x_Metrics;
      let x_584 : vec4<f32> = u_xlat3;
      u_xlat4 = ((vec4<f32>(x_580.x, x_580.y, x_580.x, x_580.y) * vec4<f32>(-1.0f, 0.0f, 0.0f, -1.0f)) + vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y));
      let x_590 : vec4<f32> = u_xlat4;
      let x_592 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_590.x, x_590.y), 0.0f);
      u_xlat5.x = x_592.y;
      let x_598 : vec4<f32> = u_xlat4;
      let x_600 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_598.z, x_598.w), 0.0f);
      u_xlat5.z = x_600.x;
      let x_604 : vec4<f32> = x_26.x_Metrics;
      let x_607 : vec4<f32> = u_xlat3;
      let x_609 : vec2<f32> = ((vec2<f32>(x_604.x, x_604.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_607.z, x_607.w));
      let x_610 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_609.x, x_610.y, x_609.y);
      let x_615 : vec3<f32> = u_xlat7;
      let x_617 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_615.x, x_615.z), 0.0f);
      let x_618 : vec2<f32> = vec2<f32>(x_617.y, x_617.x);
      let x_619 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_619.x, x_618.x, x_619.z, x_618.y);
      let x_621 : vec4<f32> = u_xlat5;
      let x_624 : vec4<f32> = u_xlat5;
      let x_626 : vec2<f32> = ((vec2<f32>(x_621.x, x_621.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(x_624.z, x_624.w));
      let x_627 : vec3<f32> = u_xlat7;
      u_xlat7 = vec3<f32>(x_626.x, x_627.y, x_626.y);
      let x_630 : vec4<f32> = u_xlat2;
      let x_633 : vec4<bool> = (vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.x) >= vec4<f32>(0.899999976f, 0.899999976f, 0.0f, 0.0f));
      let x_634 : vec2<bool> = vec2<bool>(x_633.x, x_633.y);
      let x_635 : vec4<bool> = u_xlatb2;
      u_xlatb2 = vec4<bool>(x_634.x, x_634.y, x_635.z, x_635.w);
      let x_638 : vec3<f32> = u_xlat7;
      hlslcc_movcTemp_1 = x_638;
      let x_640 : bool = u_xlatb2.x;
      if (x_640) {
        x_641 = 0.0f;
      } else {
        let x_646 : f32 = u_xlat7.x;
        x_641 = x_646;
      }
      let x_647 : f32 = x_641;
      hlslcc_movcTemp_1.x = x_647;
      let x_650 : bool = u_xlatb2.y;
      if (x_650) {
        x_651 = 0.0f;
      } else {
        let x_656 : f32 = u_xlat7.z;
        x_651 = x_656;
      }
      let x_657 : f32 = x_651;
      hlslcc_movcTemp_1.z = x_657;
      let x_659 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat7 = x_659;
      let x_660 : vec3<f32> = u_xlat7;
      let x_663 : vec4<f32> = u_xlat1;
      let x_665 : vec2<f32> = ((vec2<f32>(x_660.x, x_660.z) * vec2<f32>(20.0f, 20.0f)) + vec2<f32>(x_663.x, x_663.z));
      let x_666 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
      let x_668 : vec4<f32> = u_xlat1;
      let x_671 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.503125012f, 0.000892857148f));
      let x_672 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
      let x_677 : vec4<f32> = u_xlat1;
      let x_679 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_677.x, x_677.y), 0.0f);
      let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
      let x_681 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
      let x_683 : vec3<f32> = u_xlat6;
      let x_685 : vec4<f32> = u_xlat1;
      let x_687 : vec2<f32> = (vec2<f32>(x_683.x, x_683.y) + vec2<f32>(x_685.y, x_685.x));
      let x_688 : vec3<f32> = u_xlat6;
      u_xlat6 = vec3<f32>(x_687.x, x_687.y, x_688.z);
    }
    let x_691 : f32 = u_xlat6.y;
    let x_694 : f32 = u_xlat6.x;
    u_xlatb18 = (-(x_691) == x_694);
    let x_696 : bool = u_xlatb18;
    if (x_696) {
      let x_701 : vec4<f32> = vs_TEXCOORD2;
      let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
      let x_703 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_703.z, x_703.w);
      u_xlat1.z = 1.0f;
      u_xlat2.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_714 : f32 = vs_TEXCOORD4.x;
        let x_716 : f32 = u_xlat1.x;
        u_xlatb18 = (x_714 < x_716);
        let x_720 : f32 = u_xlat1.z;
        u_xlatb19 = (0.828100026f < x_720);
        let x_722 : bool = u_xlatb18;
        let x_723 : bool = u_xlatb19;
        u_xlatb18 = (x_722 & x_723);
        let x_726 : f32 = u_xlat2.x;
        u_xlatb19 = (x_726 == 0.0f);
        let x_728 : bool = u_xlatb18;
        let x_729 : bool = u_xlatb19;
        u_xlatb18 = (x_728 & x_729);
        let x_731 : bool = u_xlatb18;
        if (!(x_731)) {
          break;
        }
        let x_739 : vec4<f32> = u_xlat1;
        let x_741 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_739.x, x_739.y), 0.0f);
        let x_742 : vec2<f32> = vec2<f32>(x_741.x, x_741.y);
        let x_743 : vec4<f32> = u_xlat2;
        u_xlat2 = vec4<f32>(x_742.x, x_742.y, x_743.z, x_743.w);
        let x_746 : vec4<f32> = x_26.x_Metrics;
        let x_752 : vec4<f32> = u_xlat1;
        let x_754 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(-2.0f, -0.0f)) + vec2<f32>(x_752.x, x_752.y));
        let x_755 : vec4<f32> = u_xlat1;
        u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : f32 = u_xlat2.y;
        u_xlat1.z = x_758;
      }
      let x_760 : vec4<f32> = u_xlat1;
      let x_761 : vec2<f32> = vec2<f32>(x_760.x, x_760.z);
      let x_762 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_762.x, x_761.x, x_761.y, x_762.w);
      let x_764 : vec4<f32> = u_xlat2;
      let x_771 : vec2<f32> = ((vec2<f32>(x_764.x, x_764.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
      let x_772 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_771.x, x_771.y, x_772.z, x_772.w);
      let x_778 : vec4<f32> = u_xlat1;
      let x_780 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_778.x, x_778.y), 0.0f);
      u_xlat18 = x_780.w;
      let x_783 : f32 = u_xlat18;
      u_xlat18 = ((x_783 * -2.007874012f) + 3.25f);
      let x_789 : f32 = x_26.x_Metrics.x;
      let x_790 : f32 = u_xlat18;
      let x_793 : f32 = u_xlat2.y;
      u_xlat1.x = ((x_789 * x_790) + x_793);
      let x_798 : f32 = vs_TEXCOORD3.y;
      u_xlat1.y = x_798;
      let x_803 : vec4<f32> = u_xlat1;
      let x_805 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_803.x, x_803.y), 0.0f);
      u_xlat2.x = x_805.x;
      let x_808 : vec4<f32> = vs_TEXCOORD2;
      let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
      let x_810 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_810.z, x_810.w);
      u_xlat3.z = 1.0f;
      u_xlat4.x = 0.0f;
      loop {
        if (true) {
        } else {
          break;
        }
        let x_820 : f32 = u_xlat3.x;
        let x_822 : f32 = vs_TEXCOORD4.y;
        u_xlatb18 = (x_820 < x_822);
        let x_826 : f32 = u_xlat3.z;
        u_xlatb14 = (0.828100026f < x_826);
        let x_828 : bool = u_xlatb18;
        let x_829 : bool = u_xlatb14;
        u_xlatb18 = (x_828 & x_829);
        let x_832 : f32 = u_xlat4.x;
        u_xlatb14 = (x_832 == 0.0f);
        let x_834 : bool = u_xlatb18;
        let x_835 : bool = u_xlatb14;
        u_xlatb18 = (x_834 & x_835);
        let x_837 : bool = u_xlatb18;
        if (!(x_837)) {
          break;
        }
        let x_845 : vec4<f32> = u_xlat3;
        let x_847 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_845.x, x_845.y), 0.0f);
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_849 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
        let x_852 : vec4<f32> = x_26.x_Metrics;
        let x_856 : vec4<f32> = u_xlat3;
        let x_858 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.y) * vec2<f32>(2.0f, 0.0f)) + vec2<f32>(x_856.x, x_856.y));
        let x_859 : vec4<f32> = u_xlat3;
        u_xlat3 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_862 : f32 = u_xlat4.y;
        u_xlat3.z = x_862;
      }
      let x_864 : vec4<f32> = u_xlat3;
      let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.z);
      let x_866 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_866.x, x_865.x, x_865.y, x_866.w);
      let x_868 : vec4<f32> = u_xlat4;
      u_xlat14 = ((vec2<f32>(x_868.x, x_868.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
      let x_877 : vec2<f32> = u_xlat14;
      let x_878 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, x_877, 0.0f);
      u_xlat18 = x_878.w;
      let x_880 : f32 = u_xlat18;
      u_xlat18 = ((x_880 * -2.007874012f) + 3.25f);
      let x_884 : f32 = x_26.x_Metrics.x;
      let x_886 : f32 = u_xlat18;
      let x_889 : f32 = u_xlat4.y;
      u_xlat1.z = ((-(x_884) * x_886) + x_889);
      let x_893 : vec4<f32> = x_26.x_Metrics;
      let x_895 : vec4<f32> = u_xlat1;
      let x_899 : vec2<f32> = vs_TEXCOORD1;
      u_xlat3 = ((vec4<f32>(x_893.z, x_893.z, x_893.z, x_893.z) * vec4<f32>(x_895.z, x_895.x, x_895.z, x_895.x)) + -(vec4<f32>(x_899.x, x_899.x, x_899.x, x_899.x)));
      let x_903 : vec4<f32> = u_xlat3;
      u_xlat3 = round(x_903);
      let x_905 : vec4<f32> = u_xlat3;
      u_xlat14 = sqrt(abs(vec2<f32>(x_905.w, x_905.z)));
      let x_910 : vec4<f32> = x_26.x_Metrics;
      let x_913 : vec4<f32> = u_xlat1;
      let x_915 : vec2<f32> = ((vec2<f32>(x_910.x, x_910.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_913.z, x_913.y));
      let x_916 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_915.x, x_915.y, x_916.z, x_916.w);
      let x_921 : vec4<f32> = u_xlat4;
      let x_923 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_921.x, x_921.y), 0.0f);
      u_xlat2.y = x_923.x;
      let x_926 : vec4<f32> = u_xlat2;
      let x_930 : vec2<f32> = (vec2<f32>(x_926.x, x_926.y) * vec2<f32>(4.0f, 4.0f));
      let x_931 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
      let x_933 : vec4<f32> = u_xlat2;
      let x_935 : vec2<f32> = round(vec2<f32>(x_933.x, x_933.y));
      let x_936 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_936.z, x_936.w);
      let x_938 : vec4<f32> = u_xlat2;
      let x_943 : vec2<f32> = u_xlat14;
      let x_944 : vec2<f32> = ((vec2<f32>(x_938.x, x_938.y) * vec2<f32>(16.0f, 16.0f)) + x_943);
      let x_945 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
      let x_947 : vec4<f32> = u_xlat2;
      let x_952 : vec2<f32> = ((vec2<f32>(x_947.x, x_947.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
      let x_953 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
      let x_958 : vec4<f32> = u_xlat2;
      let x_960 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_958.x, x_958.y), 0.0f);
      let x_961 : vec2<f32> = vec2<f32>(x_960.x, x_960.y);
      let x_962 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_961.x, x_961.y, x_962.z, x_962.w);
      let x_964 : vec4<f32> = u_xlat3;
      let x_966 : vec4<f32> = u_xlat3;
      u_xlatb3 = (abs(x_964) >= abs(vec4<f32>(x_966.w, x_966.z, x_966.w, x_966.z)));
      let x_971 : bool = u_xlatb3.x;
      u_xlat3.x = select(0.0f, 1.0f, x_971);
      let x_975 : bool = u_xlatb3.y;
      u_xlat3.y = select(0.0f, 1.0f, x_975);
      let x_979 : bool = u_xlatb3.z;
      u_xlat3.z = select(0.0f, 0.75f, x_979);
      let x_984 : bool = u_xlatb3.w;
      u_xlat3.w = select(0.0f, 0.75f, x_984);
      let x_988 : f32 = u_xlat3.y;
      let x_990 : f32 = u_xlat3.x;
      u_xlat18 = (x_988 + x_990);
      let x_992 : vec4<f32> = u_xlat3;
      let x_994 : f32 = u_xlat18;
      u_xlat14 = (vec2<f32>(x_992.z, x_992.w) / vec2<f32>(x_994, x_994));
      let x_998 : f32 = vs_TEXCOORD0.y;
      u_xlat1.w = x_998;
      let x_1001 : vec4<f32> = x_26.x_Metrics;
      let x_1005 : vec4<f32> = u_xlat1;
      let x_1007 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(0.0f, 1.0f)) + vec2<f32>(x_1005.x, x_1005.w));
      let x_1008 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
      let x_1013 : vec4<f32> = u_xlat3;
      let x_1015 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1013.x, x_1013.y), 0.0f);
      u_xlat18 = x_1015.x;
      let x_1018 : f32 = u_xlat14.x;
      let x_1020 : f32 = u_xlat18;
      u_xlat18 = ((-(x_1018) * x_1020) + 1.0f);
      let x_1023 : vec4<f32> = u_xlat1;
      let x_1026 : vec4<f32> = x_26.x_Metrics;
      let x_1028 : vec2<f32> = (vec2<f32>(x_1023.z, x_1023.w) + vec2<f32>(x_1026.x, x_1026.y));
      let x_1029 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1028.x, x_1028.y, x_1029.z, x_1029.w);
      let x_1034 : vec4<f32> = u_xlat3;
      let x_1036 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1034.x, x_1034.y), 0.0f);
      u_xlat7.x = x_1036.x;
      let x_1040 : f32 = u_xlat14.y;
      let x_1043 : f32 = u_xlat7.x;
      let x_1045 : f32 = u_xlat18;
      u_xlat3.x = ((-(x_1040) * x_1043) + x_1045);
      let x_1049 : f32 = u_xlat3.x;
      u_xlat3.x = clamp(x_1049, 0.0f, 1.0f);
      let x_1053 : vec4<f32> = x_26.x_Metrics;
      let x_1057 : vec4<f32> = u_xlat1;
      u_xlat1 = ((vec4<f32>(x_1053.x, x_1053.y, x_1053.x, x_1053.y) * vec4<f32>(0.0f, -2.0f, 1.0f, -2.0f)) + vec4<f32>(x_1057.x, x_1057.w, x_1057.z, x_1057.w));
      let x_1063 : vec4<f32> = u_xlat1;
      let x_1065 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1063.x, x_1063.y), 0.0f);
      u_xlat18 = x_1065.x;
      let x_1068 : f32 = u_xlat14.x;
      let x_1070 : f32 = u_xlat18;
      u_xlat18 = ((-(x_1068) * x_1070) + 1.0f);
      let x_1076 : vec4<f32> = u_xlat1;
      let x_1078 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1076.z, x_1076.w), 0.0f);
      u_xlat1.x = x_1078.x;
      let x_1082 : f32 = u_xlat14.y;
      let x_1085 : f32 = u_xlat1.x;
      let x_1087 : f32 = u_xlat18;
      u_xlat3.y = ((-(x_1082) * x_1085) + x_1087);
      let x_1091 : f32 = u_xlat3.y;
      u_xlat3.y = clamp(x_1091, 0.0f, 1.0f);
      let x_1096 : vec4<f32> = u_xlat2;
      let x_1098 : vec4<f32> = u_xlat3;
      let x_1100 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.y) * vec2<f32>(x_1098.x, x_1098.y));
      let x_1101 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
    } else {
      let x_1104 : vec3<f32> = u_xlat6;
      let x_1105 : vec2<f32> = vec2<f32>(x_1104.x, x_1104.y);
      let x_1106 : vec4<f32> = SV_Target0;
      SV_Target0 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
      u_xlat0.x = 0.0f;
    }
  } else {
    let x_1111 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y, x_1111.z, x_1111.w);
  }
  let x_1115 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_1115);
  let x_1117 : bool = u_xlatb0;
  if (x_1117) {
    let x_1120 : vec4<f32> = vs_TEXCOORD3;
    let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
    let x_1122 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
    u_xlat0.z = 1.0f;
    u_xlat1.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1132 : f32 = vs_TEXCOORD4.z;
      let x_1134 : f32 = u_xlat0.y;
      u_xlatb18 = (x_1132 < x_1134);
      let x_1137 : f32 = u_xlat0.z;
      u_xlatb19 = (0.828100026f < x_1137);
      let x_1139 : bool = u_xlatb18;
      let x_1140 : bool = u_xlatb19;
      u_xlatb18 = (x_1139 & x_1140);
      let x_1143 : f32 = u_xlat1.x;
      u_xlatb19 = (x_1143 == 0.0f);
      let x_1145 : bool = u_xlatb18;
      let x_1146 : bool = u_xlatb19;
      u_xlatb18 = (x_1145 & x_1146);
      let x_1148 : bool = u_xlatb18;
      if (!(x_1148)) {
        break;
      }
      let x_1156 : vec4<f32> = u_xlat0;
      let x_1158 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1156.x, x_1156.y), 0.0f);
      let x_1159 : vec2<f32> = vec2<f32>(x_1158.y, x_1158.x);
      let x_1160 : vec4<f32> = u_xlat1;
      u_xlat1 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
      let x_1163 : vec4<f32> = x_26.x_Metrics;
      let x_1167 : vec4<f32> = u_xlat0;
      let x_1169 : vec2<f32> = ((vec2<f32>(x_1163.x, x_1163.y) * vec2<f32>(-0.0f, -2.0f)) + vec2<f32>(x_1167.x, x_1167.y));
      let x_1170 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_1169.x, x_1169.y, x_1170.z, x_1170.w);
      let x_1173 : f32 = u_xlat1.y;
      u_xlat0.z = x_1173;
    }
    let x_1175 : vec4<f32> = u_xlat0;
    let x_1176 : vec2<f32> = vec2<f32>(x_1175.y, x_1175.z);
    let x_1177 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1177.x, x_1176.x, x_1176.y, x_1177.w);
    let x_1179 : vec4<f32> = u_xlat1;
    let x_1182 : vec2<f32> = ((vec2<f32>(x_1179.x, x_1179.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.0078125f, 2.03125f));
    let x_1183 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1183.w);
    let x_1188 : vec4<f32> = u_xlat0;
    let x_1190 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, vec2<f32>(x_1188.x, x_1188.y), 0.0f);
    u_xlat0.x = x_1190.w;
    let x_1194 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1194 * -2.007874012f) + 3.25f);
    let x_1199 : f32 = x_26.x_Metrics.y;
    let x_1201 : f32 = u_xlat0.x;
    let x_1204 : f32 = u_xlat1.y;
    u_xlat0.x = ((x_1199 * x_1201) + x_1204);
    let x_1208 : f32 = vs_TEXCOORD2.x;
    u_xlat0.y = x_1208;
    let x_1213 : vec4<f32> = u_xlat0;
    let x_1215 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1213.y, x_1213.x), 0.0f);
    u_xlat1.x = x_1215.y;
    let x_1218 : vec4<f32> = vs_TEXCOORD3;
    let x_1219 : vec2<f32> = vec2<f32>(x_1218.z, x_1218.w);
    let x_1220 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
    u_xlat2.z = 1.0f;
    u_xlat3.x = 0.0f;
    loop {
      if (true) {
      } else {
        break;
      }
      let x_1231 : f32 = u_xlat2.y;
      let x_1233 : f32 = vs_TEXCOORD4.w;
      u_xlatb13 = (x_1231 < x_1233);
      let x_1236 : f32 = u_xlat2.z;
      u_xlatb19 = (0.828100026f < x_1236);
      let x_1238 : bool = u_xlatb19;
      let x_1239 : bool = u_xlatb13;
      u_xlatb13 = (x_1238 & x_1239);
      let x_1242 : f32 = u_xlat3.x;
      u_xlatb19 = (x_1242 == 0.0f);
      let x_1244 : bool = u_xlatb19;
      let x_1245 : bool = u_xlatb13;
      u_xlatb13 = (x_1244 & x_1245);
      let x_1247 : bool = u_xlatb13;
      if (!(x_1247)) {
        break;
      }
      let x_1255 : vec4<f32> = u_xlat2;
      let x_1257 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1255.x, x_1255.y), 0.0f);
      let x_1258 : vec2<f32> = vec2<f32>(x_1257.y, x_1257.x);
      let x_1259 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1259.w);
      let x_1262 : vec4<f32> = x_26.x_Metrics;
      let x_1266 : vec4<f32> = u_xlat2;
      let x_1268 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(0.0f, 2.0f)) + vec2<f32>(x_1266.x, x_1266.y));
      let x_1269 : vec4<f32> = u_xlat2;
      u_xlat2 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
      let x_1272 : f32 = u_xlat3.y;
      u_xlat2.z = x_1272;
    }
    let x_1274 : vec4<f32> = u_xlat2;
    let x_1275 : vec2<f32> = vec2<f32>(x_1274.y, x_1274.z);
    let x_1276 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1276.x, x_1275.x, x_1275.y, x_1276.w);
    let x_1279 : vec4<f32> = u_xlat3;
    u_xlat13 = ((vec2<f32>(x_1279.x, x_1279.z) * vec2<f32>(0.5f, -2.0f)) + vec2<f32>(0.5234375f, 2.03125f));
    let x_1286 : vec2<f32> = u_xlat13;
    let x_1287 : vec4<f32> = textureSampleLevel(x_SearchTexture, sampler_LinearClamp, x_1286, 0.0f);
    u_xlat13.x = x_1287.w;
    let x_1291 : f32 = u_xlat13.x;
    u_xlat13.x = ((x_1291 * -2.007874012f) + 3.25f);
    let x_1296 : f32 = x_26.x_Metrics.y;
    let x_1299 : f32 = u_xlat13.x;
    let x_1302 : f32 = u_xlat3.y;
    u_xlat0.z = ((-(x_1296) * x_1299) + x_1302);
    let x_1306 : vec4<f32> = x_26.x_Metrics;
    let x_1308 : vec4<f32> = u_xlat0;
    let x_1311 : vec2<f32> = vs_TEXCOORD1;
    u_xlat2 = ((vec4<f32>(x_1306.w, x_1306.w, x_1306.w, x_1306.w) * vec4<f32>(x_1308.z, x_1308.x, x_1308.z, x_1308.x)) + -(vec4<f32>(x_1311.y, x_1311.y, x_1311.y, x_1311.y)));
    let x_1315 : vec4<f32> = u_xlat2;
    u_xlat2 = round(x_1315);
    let x_1317 : vec4<f32> = u_xlat2;
    u_xlat13 = sqrt(abs(vec2<f32>(x_1317.w, x_1317.z)));
    let x_1322 : vec4<f32> = x_26.x_Metrics;
    let x_1325 : vec4<f32> = u_xlat0;
    let x_1327 : vec2<f32> = ((vec2<f32>(x_1322.x, x_1322.y) * vec2<f32>(0.0f, 1.0f)) + vec2<f32>(x_1325.y, x_1325.z));
    let x_1328 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1327.x, x_1327.y, x_1328.z, x_1328.w);
    let x_1333 : vec4<f32> = u_xlat3;
    let x_1335 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1333.x, x_1333.y), 0.0f);
    u_xlat1.y = x_1335.y;
    let x_1338 : vec4<f32> = u_xlat1;
    let x_1340 : vec2<f32> = (vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(4.0f, 4.0f));
    let x_1341 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1340.x, x_1340.y, x_1341.z, x_1341.w);
    let x_1343 : vec4<f32> = u_xlat1;
    let x_1345 : vec2<f32> = round(vec2<f32>(x_1343.x, x_1343.y));
    let x_1346 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1345.x, x_1345.y, x_1346.z, x_1346.w);
    let x_1348 : vec4<f32> = u_xlat1;
    let x_1351 : vec2<f32> = u_xlat13;
    let x_1352 : vec2<f32> = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(16.0f, 16.0f)) + x_1351);
    let x_1353 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1352.x, x_1352.y, x_1353.z, x_1353.w);
    let x_1355 : vec4<f32> = u_xlat1;
    let x_1358 : vec2<f32> = ((vec2<f32>(x_1355.x, x_1355.y) * vec2<f32>(0.00625f, 0.0017857143f)) + vec2<f32>(0.003125f, 0.000892857148f));
    let x_1359 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
    let x_1364 : vec4<f32> = u_xlat1;
    let x_1366 : vec4<f32> = textureSampleLevel(x_AreaTexture, sampler_LinearClamp, vec2<f32>(x_1364.x, x_1364.y), 0.0f);
    let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
    let x_1368 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1367.x, x_1367.y, x_1368.z, x_1368.w);
    let x_1370 : vec4<f32> = u_xlat2;
    let x_1372 : vec4<f32> = u_xlat2;
    u_xlatb2 = (abs(x_1370) >= abs(vec4<f32>(x_1372.w, x_1372.z, x_1372.w, x_1372.z)));
    let x_1377 : bool = u_xlatb2.x;
    u_xlat2.x = select(0.0f, 1.0f, x_1377);
    let x_1381 : bool = u_xlatb2.y;
    u_xlat2.y = select(0.0f, 1.0f, x_1381);
    let x_1385 : bool = u_xlatb2.z;
    u_xlat2.z = select(0.0f, 0.75f, x_1385);
    let x_1389 : bool = u_xlatb2.w;
    u_xlat2.w = select(0.0f, 0.75f, x_1389);
    let x_1393 : f32 = u_xlat2.y;
    let x_1395 : f32 = u_xlat2.x;
    u_xlat6.x = (x_1393 + x_1395);
    let x_1398 : vec4<f32> = u_xlat2;
    let x_1400 : vec3<f32> = u_xlat6;
    u_xlat13 = (vec2<f32>(x_1398.z, x_1398.w) / vec2<f32>(x_1400.x, x_1400.x));
    let x_1404 : f32 = vs_TEXCOORD0.x;
    u_xlat0.w = x_1404;
    let x_1407 : vec4<f32> = x_26.x_Metrics;
    let x_1410 : vec4<f32> = u_xlat0;
    let x_1412 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.y) * vec2<f32>(1.0f, 0.0f)) + vec2<f32>(x_1410.w, x_1410.x));
    let x_1413 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1412.x, x_1412.y, x_1413.z, x_1413.w);
    let x_1418 : vec4<f32> = u_xlat2;
    let x_1420 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1418.x, x_1418.y), 0.0f);
    u_xlat6.x = x_1420.y;
    let x_1424 : f32 = u_xlat13.x;
    let x_1427 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1424) * x_1427) + 1.0f);
    let x_1431 : vec4<f32> = u_xlat0;
    let x_1434 : vec4<f32> = x_26.x_Metrics;
    let x_1436 : vec2<f32> = (vec2<f32>(x_1431.w, x_1431.z) + vec2<f32>(x_1434.x, x_1434.y));
    let x_1437 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1436.x, x_1436.y, x_1437.z, x_1437.w);
    let x_1442 : vec4<f32> = u_xlat2;
    let x_1444 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1442.x, x_1442.y), 0.0f);
    u_xlat2.x = x_1444.y;
    let x_1448 : f32 = u_xlat13.y;
    let x_1451 : f32 = u_xlat2.x;
    let x_1454 : f32 = u_xlat6.x;
    u_xlat14.x = ((-(x_1448) * x_1451) + x_1454);
    let x_1458 : f32 = u_xlat14.x;
    u_xlat14.x = clamp(x_1458, 0.0f, 1.0f);
    let x_1462 : vec4<f32> = x_26.x_Metrics;
    let x_1466 : vec4<f32> = u_xlat0;
    u_xlat0 = ((vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y) * vec4<f32>(-2.0f, 0.0f, -2.0f, 1.0f)) + vec4<f32>(x_1466.w, x_1466.x, x_1466.w, x_1466.z));
    let x_1472 : vec4<f32> = u_xlat0;
    let x_1474 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1472.x, x_1472.y), 0.0f);
    u_xlat0.x = x_1474.y;
    let x_1478 : f32 = u_xlat13.x;
    let x_1481 : f32 = u_xlat0.x;
    u_xlat0.x = ((-(x_1478) * x_1481) + 1.0f);
    let x_1488 : vec4<f32> = u_xlat0;
    let x_1490 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1488.z, x_1488.w), 0.0f);
    u_xlat6.x = x_1490.y;
    let x_1494 : f32 = u_xlat13.y;
    let x_1497 : f32 = u_xlat6.x;
    let x_1500 : f32 = u_xlat0.x;
    u_xlat14.y = ((-(x_1494) * x_1497) + x_1500);
    let x_1504 : f32 = u_xlat14.y;
    u_xlat14.y = clamp(x_1504, 0.0f, 1.0f);
    let x_1507 : vec4<f32> = u_xlat1;
    let x_1509 : vec2<f32> = u_xlat14;
    let x_1510 : vec2<f32> = (vec2<f32>(x_1507.x, x_1507.y) * x_1509);
    let x_1511 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1511.x, x_1511.y, x_1510.x, x_1510.y);
  } else {
    let x_1514 : vec4<f32> = SV_Target0;
    SV_Target0 = vec4<f32>(x_1514.x, x_1514.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

