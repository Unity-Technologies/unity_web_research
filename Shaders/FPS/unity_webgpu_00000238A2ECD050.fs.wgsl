struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati30 : i32;

var<private> u_xlatb11 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_314 : f32;
  var x_631 : f32;
  var x_643 : f32;
  var x_655 : f32;
  var x_712 : f32;
  var x_725 : f32;
  var x_737 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat10;
  let x_41 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat30;
  let x_45 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat10;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat10 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat10;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_87);
  let x_91 : f32 = u_xlat30;
  u_xlati30 = i32(x_91);
  let x_93 : i32 = u_xlati30;
  u_xlati30 = max(x_93, 3i);
  let x_96 : i32 = u_xlati30;
  u_xlati30 = min(x_96, 16i);
  let x_99 : i32 = u_xlati30;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat10;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  let x_114 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_114);
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_137 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_137;
  u_xlati_loop_1 = 0i;
  loop {
    let x_146 : i32 = u_xlati_loop_1;
    let x_147 : i32 = u_xlati30;
    if ((x_146 < x_147)) {
    } else {
      break;
    }
    let x_150 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_150);
    let x_154 : f32 = u_xlat16.x;
    u_xlat16.x = (x_154 + 0.5f);
    let x_158 : f32 = u_xlat16.x;
    let x_160 : f32 = u_xlat1.x;
    u_xlat2.x = (x_158 / x_160);
    let x_163 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_163 + vec2<f32>(-0.5f, -0.5f));
    let x_168 : vec2<f32> = u_xlat16;
    let x_170 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_173 : vec2<f32> = ((x_168 * vec2<f32>(x_170.z, x_170.z)) + vec2<f32>(0.5f, 0.5f));
    let x_174 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
    let x_176 : vec2<f32> = u_xlat16;
    let x_178 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_183 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = ((x_176 * vec2<f32>(x_178.z, x_178.z)) + -(vec2<f32>(x_183.x, x_183.y)));
    let x_187 : vec2<f32> = u_xlat16;
    let x_189 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = (x_187 * vec2<f32>(x_189.z, x_189.w));
    let x_193 : vec2<f32> = u_xlat16;
    let x_194 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_193, x_194);
    let x_196 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_196);
    let x_198 : bool = u_xlatb11;
    if (x_198) {
      let x_202 : f32 = u_xlat36;
      let x_205 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_202, x_202) * vec2<f32>(x_205.x, x_205.y));
      let x_210 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_210);
      let x_214 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_214);
      let x_216 : f32 = u_xlat8;
      let x_217 : f32 = u_xlat9;
      u_xlat27.x = (x_216 / x_217);
      let x_222 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_222);
      let x_225 : f32 = u_xlat27.x;
      let x_226 : f32 = u_xlat37;
      u_xlat27.x = ((x_225 * x_226) + -1.0f);
      let x_230 : vec2<f32> = u_xlat16;
      let x_231 : vec2<f32> = u_xlat27;
      let x_234 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_230 * vec2<f32>(x_231.x, x_231.x)) + vec2<f32>(x_234.x, x_234.y));
    } else {
      let x_238 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_238);
      let x_240 : f32 = u_xlat8;
      let x_242 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat8 = (x_240 * x_242);
      let x_244 : f32 = u_xlat36;
      let x_246 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat36 = (x_244 * x_246);
      let x_249 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_249), 1.0f);
      let x_253 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_253), 1.0f);
      let x_256 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_256);
      let x_258 : f32 = u_xlat28;
      let x_259 : f32 = u_xlat18;
      u_xlat18 = (x_258 * x_259);
      let x_261 : f32 = u_xlat18;
      let x_262 : f32 = u_xlat18;
      u_xlat28 = (x_261 * x_262);
      let x_265 : f32 = u_xlat28;
      u_xlat38 = ((x_265 * 0.0208351f) + -0.085133001f);
      let x_270 : f32 = u_xlat28;
      let x_271 : f32 = u_xlat38;
      u_xlat38 = ((x_270 * x_271) + 0.180141002f);
      let x_275 : f32 = u_xlat28;
      let x_276 : f32 = u_xlat38;
      u_xlat38 = ((x_275 * x_276) + -0.330299497f);
      let x_280 : f32 = u_xlat28;
      let x_281 : f32 = u_xlat38;
      u_xlat28 = ((x_280 * x_281) + 0.999866009f);
      let x_285 : f32 = u_xlat28;
      let x_286 : f32 = u_xlat18;
      u_xlat38 = (x_285 * x_286);
      let x_289 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_289));
      let x_292 : f32 = u_xlat38;
      u_xlat38 = ((x_292 * -2.0f) + 1.570796371f);
      let x_297 : bool = u_xlatb9;
      let x_298 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_298, x_297);
      let x_300 : f32 = u_xlat18;
      let x_301 : f32 = u_xlat28;
      let x_303 : f32 = u_xlat38;
      u_xlat18 = ((x_300 * x_301) + x_303);
      let x_305 : f32 = u_xlat36;
      u_xlat36 = min(x_305, 1.0f);
      let x_308 : f32 = u_xlat36;
      let x_309 : f32 = u_xlat36;
      u_xlatb36 = (x_308 < -(x_309));
      let x_312 : bool = u_xlatb36;
      if (x_312) {
        let x_317 : f32 = u_xlat18;
        x_314 = -(x_317);
      } else {
        let x_320 : f32 = u_xlat18;
        x_314 = x_320;
      }
      let x_321 : f32 = x_314;
      u_xlat36 = x_321;
      let x_322 : f32 = u_xlat8;
      let x_323 : f32 = u_xlat36;
      u_xlat36 = ((x_322 * x_323) + -1.0f);
      let x_326 : vec2<f32> = u_xlat16;
      let x_327 : f32 = u_xlat36;
      let x_330 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_326 * vec2<f32>(x_327, x_327)) + vec2<f32>(x_330.x, x_330.y));
    }
    let x_333 : vec2<f32> = u_xlat27;
    u_xlat27 = x_333;
    let x_334 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_334, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_338 : vec2<f32> = u_xlat27;
    let x_340 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_338 * vec2<f32>(x_340, x_340));
    let x_348 : vec2<f32> = u_xlat16;
    let x_349 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_348, 0.0f);
    u_xlat7 = x_349;
    let x_355 : vec3<f32> = u_xlat2;
    let x_357 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_355.x, x_355.y), 0.0f);
    let x_358 : vec3<f32> = vec3<f32>(x_357.x, x_357.y, x_357.z);
    let x_359 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
    let x_361 : vec4<f32> = u_xlat7;
    let x_362 : vec4<f32> = u_xlat3;
    let x_364 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_361 * x_362) + x_364);
    let x_366 : vec4<f32> = u_xlat3;
    let x_367 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_366 + x_367);
    let x_369 : vec2<f32> = u_xlat10;
    let x_370 : vec2<f32> = u_xlat21;
    u_xlat21 = (x_369 + x_370);

    continuing {
      let x_372 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_372 + 1i);
    }
  }
  let x_374 : vec4<f32> = u_xlat4;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_374 / x_375);
  let x_377 : vec4<f32> = u_xlat0;
  let x_379 : vec4<f32> = u_xlat1;
  let x_381 : vec3<f32> = (vec3<f32>(x_377.x, x_377.x, x_377.x) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat1;
  let x_387 : f32 = x_51.x_PostExposure;
  let x_389 : f32 = x_51.x_PostExposure;
  let x_391 : f32 = x_51.x_PostExposure;
  let x_393 : f32 = x_51.x_PostExposure;
  let x_394 : vec4<f32> = vec4<f32>(x_387, x_389, x_391, x_393);
  u_xlat0 = (x_384 * vec4<f32>(x_394.x, x_394.y, x_394.z, x_394.w));
  let x_401 : vec4<f32> = u_xlat0;
  let x_408 : vec3<f32> = ((vec3<f32>(x_401.z, x_401.x, x_401.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = log2(vec3<f32>(x_411.x, x_411.y, x_411.z));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = clamp(vec3<f32>(x_426.x, x_426.y, x_426.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat0;
  let x_438 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_440 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_438.z, x_438.z, x_438.z));
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_444 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_444);
  let x_448 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_450 : vec2<f32> = (vec2<f32>(x_448.x, x_448.y) * vec2<f32>(0.5f, 0.5f));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_451.y, x_451.z, x_450.y);
  let x_453 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec2<f32> = ((vec2<f32>(x_453.y, x_453.z) * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_459.x, x_459.w));
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_461.x, x_461.y, x_462.w);
  let x_465 : f32 = u_xlat10.x;
  let x_467 : f32 = x_51.x_Lut2D_Params.y;
  let x_470 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_465 * x_467) + x_470);
  let x_478 : vec4<f32> = u_xlat1;
  let x_480 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_478.x, x_478.z));
  let x_481 : vec3<f32> = vec3<f32>(x_480.x, x_480.y, x_480.z);
  let x_482 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_485;
  let x_487 : vec2<f32> = u_xlat22;
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec2<f32> = (x_487 + vec2<f32>(x_488.x, x_488.z));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_496 : vec4<f32> = u_xlat1;
  let x_498 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_496.x, x_496.y));
  let x_499 : vec3<f32> = vec3<f32>(x_498.x, x_498.y, x_498.z);
  let x_500 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = u_xlat0.x;
  let x_505 : f32 = x_51.x_Lut2D_Params.z;
  let x_508 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_503 * x_505) + -(x_508));
  let x_512 : vec4<f32> = u_xlat3;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = (-(vec3<f32>(x_512.x, x_512.y, x_512.z)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat0;
  let x_522 : vec4<f32> = u_xlat1;
  let x_525 : vec4<f32> = u_xlat3;
  let x_527 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.x, x_520.x) * vec3<f32>(x_522.x, x_522.y, x_522.z)) + vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec2<f32> = vs_TEXCOORD0;
  let x_532 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_536 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_538 : vec2<f32> = ((x_530 * vec2<f32>(x_532.x, x_532.y)) + vec2<f32>(x_536.z, x_536.w));
  let x_539 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_546.x, x_546.y));
  u_xlat1.x = x_548.w;
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_552 * 2.0f) + -1.0f);
  let x_558 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_558 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_564 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_564, 0.0f, 1.0f);
  let x_568 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_568 * 2.0f) + -1.0f);
  let x_573 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_573)) + 1.0f);
  let x_579 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_579);
  let x_583 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_583) + 1.0f);
  let x_588 : f32 = u_xlat1.x;
  let x_590 : f32 = u_xlat11.x;
  u_xlat1.x = (x_588 * x_590);
  let x_593 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_593.x, x_593.y, x_593.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_598 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_598.x, x_598.y, x_598.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_604 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_604);
  let x_606 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_606 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_610 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_610);
  let x_612 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_612 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_624 : vec4<f32> = u_xlat0;
  let x_627 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_624.x, x_624.y, x_624.z, x_624.x));
  u_xlatb0 = vec3<bool>(x_627.x, x_627.y, x_627.z);
  let x_630 : bool = u_xlatb0.x;
  if (x_630) {
    let x_635 : f32 = u_xlat11.x;
    x_631 = x_635;
  } else {
    let x_638 : f32 = u_xlat2.x;
    x_631 = x_638;
  }
  let x_639 : f32 = x_631;
  u_xlat0.x = x_639;
  let x_642 : bool = u_xlatb0.y;
  if (x_642) {
    let x_647 : f32 = u_xlat11.y;
    x_643 = x_647;
  } else {
    let x_650 : f32 = u_xlat2.y;
    x_643 = x_650;
  }
  let x_651 : f32 = x_643;
  u_xlat0.y = x_651;
  let x_654 : bool = u_xlatb0.z;
  if (x_654) {
    let x_659 : f32 = u_xlat11.z;
    x_655 = x_659;
  } else {
    let x_662 : f32 = u_xlat2.z;
    x_655 = x_662;
  }
  let x_663 : f32 = x_655;
  u_xlat0.z = x_663;
  let x_665 : vec4<f32> = u_xlat1;
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.x, x_665.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat0;
  let x_679 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_682.x, x_682.y, x_682.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_687 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_687 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_691 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_691), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_694);
  let x_696 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_696 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_700 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_700);
  let x_704 : vec4<f32> = u_xlat0;
  let x_706 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.x));
  u_xlatb0 = vec3<bool>(x_706.x, x_706.y, x_706.z);
  let x_711 : bool = u_xlatb0.x;
  if (x_711) {
    let x_716 : f32 = u_xlat1.x;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.x;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  SV_Target0.x = x_720;
  let x_724 : bool = u_xlatb0.y;
  if (x_724) {
    let x_729 : f32 = u_xlat1.y;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat2.y;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  SV_Target0.y = x_733;
  let x_736 : bool = u_xlatb0.z;
  if (x_736) {
    let x_741 : f32 = u_xlat1.z;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat2.z;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  SV_Target0.z = x_745;
  let x_748 : f32 = u_xlat0.w;
  SV_Target0.w = x_748;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

