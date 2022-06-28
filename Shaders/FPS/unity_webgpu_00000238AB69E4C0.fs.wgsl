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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_314 : f32;
  var x_711 : f32;
  var x_723 : f32;
  var x_735 : f32;
  var x_792 : f32;
  var x_805 : f32;
  var x_817 : f32;
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
  let x_382 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_385 : vec2<f32> = vs_TEXCOORD1;
  let x_388 : vec4<f32> = x_51.x_Grain_Params2;
  let x_392 : vec4<f32> = x_51.x_Grain_Params2;
  let x_394 : vec2<f32> = ((x_385 * vec2<f32>(x_388.x, x_388.y)) + vec2<f32>(x_392.z, x_392.w));
  let x_395 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_394.x, x_394.y, x_395.z);
  let x_402 : vec3<f32> = u_xlat2;
  let x_404 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_402.x, x_402.y));
  let x_405 : vec3<f32> = vec3<f32>(x_404.x, x_404.y, x_404.z);
  let x_406 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat0;
  let x_409 : vec3<f32> = vec3<f32>(x_408.x, x_408.y, x_408.z);
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : vec4<f32> = u_xlat4;
  let x_416 : vec3<f32> = clamp(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_426 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_426);
  let x_430 : f32 = x_51.x_Grain_Params1.x;
  let x_431 : f32 = u_xlat30;
  u_xlat30 = ((x_430 * -(x_431)) + 1.0f);
  let x_435 : vec4<f32> = u_xlat0;
  let x_437 : vec4<f32> = u_xlat3;
  let x_439 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : vec4<f32> = u_xlat3;
  let x_445 : f32 = x_51.x_Grain_Params1.y;
  let x_447 : f32 = x_51.x_Grain_Params1.y;
  let x_449 : f32 = x_51.x_Grain_Params1.y;
  let x_451 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) * vec3<f32>(x_445, x_447, x_449));
  let x_452 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat3;
  let x_456 : f32 = u_xlat30;
  let x_459 : vec4<f32> = u_xlat0;
  let x_461 : vec3<f32> = ((vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(x_456, x_456, x_456)) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat1;
  let x_467 : f32 = x_51.x_PostExposure;
  let x_469 : f32 = x_51.x_PostExposure;
  let x_471 : f32 = x_51.x_PostExposure;
  let x_473 : f32 = x_51.x_PostExposure;
  let x_474 : vec4<f32> = vec4<f32>(x_467, x_469, x_471, x_473);
  u_xlat0 = (x_464 * vec4<f32>(x_474.x, x_474.y, x_474.z, x_474.w));
  let x_481 : vec4<f32> = u_xlat0;
  let x_488 : vec3<f32> = ((vec3<f32>(x_481.z, x_481.x, x_481.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_489 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat0;
  let x_493 : vec3<f32> = log2(vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = clamp(vec3<f32>(x_506.x, x_506.y, x_506.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_511 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat0;
  let x_518 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_520 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_518.z, x_518.z, x_518.z));
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_524);
  let x_528 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_530 : vec2<f32> = (vec2<f32>(x_528.x, x_528.y) * vec2<f32>(0.5f, 0.5f));
  let x_531 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_530.x, x_531.y, x_531.z, x_530.y);
  let x_533 : vec4<f32> = u_xlat1;
  let x_536 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_539 : vec4<f32> = u_xlat1;
  let x_541 : vec2<f32> = ((vec2<f32>(x_533.y, x_533.z) * vec2<f32>(x_536.x, x_536.y)) + vec2<f32>(x_539.x, x_539.w));
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_542.x, x_541.x, x_541.y, x_542.w);
  let x_545 : f32 = u_xlat10.x;
  let x_547 : f32 = x_51.x_Lut2D_Params.y;
  let x_550 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_545 * x_547) + x_550);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_558.x, x_558.z));
  let x_561 : vec3<f32> = vec3<f32>(x_560.x, x_560.y, x_560.z);
  let x_562 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_565 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_565;
  let x_567 : vec2<f32> = u_xlat22;
  let x_568 : vec4<f32> = u_xlat1;
  let x_570 : vec2<f32> = (x_567 + vec2<f32>(x_568.x, x_568.z));
  let x_571 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
  let x_576 : vec4<f32> = u_xlat1;
  let x_578 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_576.x, x_576.y));
  let x_579 : vec3<f32> = vec3<f32>(x_578.x, x_578.y, x_578.z);
  let x_580 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_583 : f32 = u_xlat0.x;
  let x_585 : f32 = x_51.x_Lut2D_Params.z;
  let x_588 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_583 * x_585) + -(x_588));
  let x_592 : vec4<f32> = u_xlat3;
  let x_595 : vec4<f32> = u_xlat1;
  let x_597 : vec3<f32> = (-(vec3<f32>(x_592.x, x_592.y, x_592.z)) + vec3<f32>(x_595.x, x_595.y, x_595.z));
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
  let x_600 : vec4<f32> = u_xlat0;
  let x_602 : vec4<f32> = u_xlat1;
  let x_605 : vec4<f32> = u_xlat3;
  let x_607 : vec3<f32> = ((vec3<f32>(x_600.x, x_600.x, x_600.x) * vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec2<f32> = vs_TEXCOORD0;
  let x_612 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_616 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_618 : vec2<f32> = ((x_610 * vec2<f32>(x_612.x, x_612.y)) + vec2<f32>(x_616.z, x_616.w));
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_626.x, x_626.y));
  u_xlat1.x = x_628.w;
  let x_632 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_632 * 2.0f) + -1.0f);
  let x_638 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_638 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_644 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_644, 0.0f, 1.0f);
  let x_648 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_648 * 2.0f) + -1.0f);
  let x_653 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_653)) + 1.0f);
  let x_659 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_659);
  let x_663 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_663) + 1.0f);
  let x_668 : f32 = u_xlat1.x;
  let x_670 : f32 = u_xlat11.x;
  u_xlat1.x = (x_668 * x_670);
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_678 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_678.x, x_678.y, x_678.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_684 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_684);
  let x_686 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_686 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_690 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_690);
  let x_692 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_692 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_704 : vec4<f32> = u_xlat0;
  let x_707 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.x));
  u_xlatb0 = vec3<bool>(x_707.x, x_707.y, x_707.z);
  let x_710 : bool = u_xlatb0.x;
  if (x_710) {
    let x_715 : f32 = u_xlat11.x;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.x;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  u_xlat0.x = x_719;
  let x_722 : bool = u_xlatb0.y;
  if (x_722) {
    let x_727 : f32 = u_xlat11.y;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.y;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  u_xlat0.y = x_731;
  let x_734 : bool = u_xlatb0.z;
  if (x_734) {
    let x_739 : f32 = u_xlat11.z;
    x_735 = x_739;
  } else {
    let x_742 : f32 = u_xlat2.z;
    x_735 = x_742;
  }
  let x_743 : f32 = x_735;
  u_xlat0.z = x_743;
  let x_745 : vec4<f32> = u_xlat1;
  let x_750 : vec4<f32> = u_xlat0;
  let x_752 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.x, x_745.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat0;
  let x_759 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_767 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_767 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_771), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_774 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_774);
  let x_776 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_776 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_780 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_780);
  let x_784 : vec4<f32> = u_xlat0;
  let x_786 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_784.x, x_784.y, x_784.z, x_784.x));
  u_xlatb0 = vec3<bool>(x_786.x, x_786.y, x_786.z);
  let x_791 : bool = u_xlatb0.x;
  if (x_791) {
    let x_796 : f32 = u_xlat1.x;
    x_792 = x_796;
  } else {
    let x_799 : f32 = u_xlat2.x;
    x_792 = x_799;
  }
  let x_800 : f32 = x_792;
  SV_Target0.x = x_800;
  let x_804 : bool = u_xlatb0.y;
  if (x_804) {
    let x_809 : f32 = u_xlat1.y;
    x_805 = x_809;
  } else {
    let x_812 : f32 = u_xlat2.y;
    x_805 = x_812;
  }
  let x_813 : f32 = x_805;
  SV_Target0.y = x_813;
  let x_816 : bool = u_xlatb0.z;
  if (x_816) {
    let x_821 : f32 = u_xlat1.z;
    x_817 = x_821;
  } else {
    let x_824 : f32 = u_xlat2.z;
    x_817 = x_824;
  }
  let x_825 : f32 = x_817;
  SV_Target0.z = x_825;
  let x_828 : f32 = u_xlat0.w;
  SV_Target0.w = x_828;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

