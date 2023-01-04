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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

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

var<private> u_xlat31 : f32;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_328 : f32;
  var x_534 : f32;
  var x_546 : f32;
  var x_558 : f32;
  var x_688 : f32;
  var x_700 : f32;
  var x_712 : f32;
  var x_794 : f32;
  var x_806 : f32;
  var x_818 : f32;
  var x_860 : f32;
  var x_873 : f32;
  var x_885 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat10;
  let x_44 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat30;
  let x_49 : vec3<f32> = u_xlat10;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat10;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat10;
  let x_81 : vec4<f32> = x_58.x_MainTex_TexelSize;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_75.x, x_75.y)) * vec2<f32>(x_81.z, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec2<f32> = (vec2<f32>(x_86.x, x_86.y) * vec2<f32>(0.5f, 0.5f));
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_98);
  let x_102 : f32 = u_xlat30;
  u_xlati30 = i32(x_102);
  let x_104 : i32 = u_xlati30;
  u_xlati30 = max(x_104, 3i);
  let x_107 : i32 = u_xlati30;
  u_xlati30 = min(x_107, 16i);
  let x_110 : i32 = u_xlati30;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat10;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  let x_128 : f32 = x_58.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_128);
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
  let x_151 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_151;
  u_xlati_loop_1 = 0i;
  loop {
    let x_160 : i32 = u_xlati_loop_1;
    let x_161 : i32 = u_xlati30;
    if ((x_160 < x_161)) {
    } else {
      break;
    }
    let x_164 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_164);
    let x_168 : f32 = u_xlat16.x;
    u_xlat16.x = (x_168 + 0.5f);
    let x_172 : f32 = u_xlat16.x;
    let x_174 : f32 = u_xlat1.x;
    u_xlat2.x = (x_172 / x_174);
    let x_177 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_177 + vec2<f32>(-0.5f, -0.5f));
    let x_182 : vec2<f32> = u_xlat16;
    let x_184 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_187 : vec2<f32> = ((x_182 * vec2<f32>(x_184.z, x_184.z)) + vec2<f32>(0.5f, 0.5f));
    let x_188 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_187.x, x_187.y, x_188.z, x_188.w);
    let x_190 : vec2<f32> = u_xlat16;
    let x_192 : vec4<f32> = x_58.x_Distortion_Amount;
    let x_197 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = ((x_190 * vec2<f32>(x_192.z, x_192.z)) + -(vec2<f32>(x_197.x, x_197.y)));
    let x_201 : vec2<f32> = u_xlat16;
    let x_203 : vec4<f32> = x_58.x_Distortion_CenterScale;
    u_xlat16 = (x_201 * vec2<f32>(x_203.z, x_203.w));
    let x_207 : vec2<f32> = u_xlat16;
    let x_208 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_207, x_208);
    let x_210 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_210);
    let x_212 : bool = u_xlatb11;
    if (x_212) {
      let x_216 : f32 = u_xlat36;
      let x_219 : vec4<f32> = x_58.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_216, x_216) * vec2<f32>(x_219.x, x_219.y));
      let x_224 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_224);
      let x_228 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_228);
      let x_230 : f32 = u_xlat8;
      let x_231 : f32 = u_xlat9;
      u_xlat27.x = (x_230 / x_231);
      let x_236 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_236);
      let x_239 : f32 = u_xlat27.x;
      let x_240 : f32 = u_xlat37;
      u_xlat27.x = ((x_239 * x_240) + -1.0f);
      let x_244 : vec2<f32> = u_xlat16;
      let x_245 : vec2<f32> = u_xlat27;
      let x_248 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_244 * vec2<f32>(x_245.x, x_245.x)) + vec2<f32>(x_248.x, x_248.y));
    } else {
      let x_252 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_252);
      let x_254 : f32 = u_xlat8;
      let x_256 : f32 = x_58.x_Distortion_Amount.x;
      u_xlat8 = (x_254 * x_256);
      let x_258 : f32 = u_xlat36;
      let x_260 : f32 = x_58.x_Distortion_Amount.y;
      u_xlat36 = (x_258 * x_260);
      let x_263 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_263), 1.0f);
      let x_267 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_267), 1.0f);
      let x_270 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_270);
      let x_272 : f32 = u_xlat28;
      let x_273 : f32 = u_xlat18;
      u_xlat18 = (x_272 * x_273);
      let x_275 : f32 = u_xlat18;
      let x_276 : f32 = u_xlat18;
      u_xlat28 = (x_275 * x_276);
      let x_279 : f32 = u_xlat28;
      u_xlat38 = ((x_279 * 0.0208351f) + -0.085133001f);
      let x_284 : f32 = u_xlat28;
      let x_285 : f32 = u_xlat38;
      u_xlat38 = ((x_284 * x_285) + 0.180141002f);
      let x_289 : f32 = u_xlat28;
      let x_290 : f32 = u_xlat38;
      u_xlat38 = ((x_289 * x_290) + -0.330299497f);
      let x_294 : f32 = u_xlat28;
      let x_295 : f32 = u_xlat38;
      u_xlat28 = ((x_294 * x_295) + 0.999866009f);
      let x_299 : f32 = u_xlat28;
      let x_300 : f32 = u_xlat18;
      u_xlat38 = (x_299 * x_300);
      let x_303 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_303));
      let x_306 : f32 = u_xlat38;
      u_xlat38 = ((x_306 * -2.0f) + 1.570796371f);
      let x_311 : bool = u_xlatb9;
      let x_312 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_312, x_311);
      let x_314 : f32 = u_xlat18;
      let x_315 : f32 = u_xlat28;
      let x_317 : f32 = u_xlat38;
      u_xlat18 = ((x_314 * x_315) + x_317);
      let x_319 : f32 = u_xlat36;
      u_xlat36 = min(x_319, 1.0f);
      let x_322 : f32 = u_xlat36;
      let x_323 : f32 = u_xlat36;
      u_xlatb36 = (x_322 < -(x_323));
      let x_326 : bool = u_xlatb36;
      if (x_326) {
        let x_331 : f32 = u_xlat18;
        x_328 = -(x_331);
      } else {
        let x_334 : f32 = u_xlat18;
        x_328 = x_334;
      }
      let x_335 : f32 = x_328;
      u_xlat36 = x_335;
      let x_336 : f32 = u_xlat8;
      let x_337 : f32 = u_xlat36;
      u_xlat36 = ((x_336 * x_337) + -1.0f);
      let x_340 : vec2<f32> = u_xlat16;
      let x_341 : f32 = u_xlat36;
      let x_344 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_340 * vec2<f32>(x_341, x_341)) + vec2<f32>(x_344.x, x_344.y));
    }
    let x_347 : vec2<f32> = u_xlat27;
    u_xlat27 = x_347;
    let x_348 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_348, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_352 : vec2<f32> = u_xlat27;
    let x_354 : f32 = x_58.x_RenderViewportScaleFactor;
    u_xlat16 = (x_352 * vec2<f32>(x_354, x_354));
    let x_362 : vec2<f32> = u_xlat16;
    let x_363 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_362, 0.0f);
    u_xlat7 = x_363;
    let x_369 : vec3<f32> = u_xlat2;
    let x_371 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_369.x, x_369.y), 0.0f);
    let x_372 : vec3<f32> = vec3<f32>(x_371.x, x_371.y, x_371.z);
    let x_373 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_375 : vec4<f32> = u_xlat7;
    let x_376 : vec4<f32> = u_xlat3;
    let x_378 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_375 * x_376) + x_378);
    let x_380 : vec4<f32> = u_xlat3;
    let x_381 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_380 + x_381);
    let x_383 : vec3<f32> = u_xlat10;
    let x_385 : vec2<f32> = u_xlat21;
    u_xlat21 = (vec2<f32>(x_383.x, x_383.y) + x_385);

    continuing {
      let x_387 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_387 + 1i);
    }
  }
  let x_389 : vec4<f32> = u_xlat4;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_389 / x_390);
  let x_392 : vec3<f32> = u_xlat0;
  let x_394 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_392.x, x_392.x, x_392.x) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : vec2<f32> = vs_TEXCOORD1;
  let x_401 : vec4<f32> = x_58.x_Grain_Params2;
  let x_405 : vec4<f32> = x_58.x_Grain_Params2;
  let x_407 : vec2<f32> = ((x_398 * vec2<f32>(x_401.x, x_401.y)) + vec2<f32>(x_405.z, x_405.w));
  let x_408 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_415.x, x_415.y));
  let x_418 : vec3<f32> = vec3<f32>(x_417.x, x_417.y, x_417.z);
  let x_419 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_421 : vec3<f32> = u_xlat0;
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  let x_428 : vec3<f32> = clamp(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_438 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_438);
  let x_442 : f32 = x_58.x_Grain_Params1.x;
  let x_443 : f32 = u_xlat30;
  u_xlat30 = ((x_442 * -(x_443)) + 1.0f);
  let x_447 : vec3<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat1;
  let x_450 : vec3<f32> = (x_447 * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : vec4<f32> = u_xlat1;
  let x_456 : f32 = x_58.x_Grain_Params1.y;
  let x_458 : f32 = x_58.x_Grain_Params1.y;
  let x_460 : f32 = x_58.x_Grain_Params1.y;
  let x_462 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * vec3<f32>(x_456, x_458, x_460));
  let x_463 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : f32 = u_xlat30;
  let x_470 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(x_467, x_467, x_467)) + x_470);
  let x_472 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_472, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_478 : f32 = u_xlat1.w;
  u_xlat31 = x_478;
  let x_479 : f32 = u_xlat31;
  u_xlat31 = clamp(x_479, 0.0f, 1.0f);
  let x_481 : vec3<f32> = u_xlat0;
  let x_485 : vec3<f32> = (vec3<f32>(x_481.z, x_481.x, x_481.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_486 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_488 : vec3<f32> = u_xlat0;
  let x_492 : vec3<f32> = max(vec3<f32>(x_488.z, x_488.x, x_488.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_493 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat3;
  let x_497 : vec3<f32> = log2(vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : vec4<f32> = u_xlat3;
  let x_504 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_505 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat3;
  let x_509 : vec3<f32> = exp2(vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat3;
  let x_519 : vec3<f32> = ((vec3<f32>(x_512.x, x_512.y, x_512.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_527 : vec3<f32> = u_xlat0;
  let x_530 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_527.z, x_527.x, x_527.y, x_527.z));
  u_xlatb0 = vec3<bool>(x_530.x, x_530.y, x_530.z);
  let x_533 : bool = u_xlatb0.x;
  if (x_533) {
    let x_538 : f32 = u_xlat1.x;
    x_534 = x_538;
  } else {
    let x_541 : f32 = u_xlat3.x;
    x_534 = x_541;
  }
  let x_542 : f32 = x_534;
  u_xlat0.x = x_542;
  let x_545 : bool = u_xlatb0.y;
  if (x_545) {
    let x_550 : f32 = u_xlat1.y;
    x_546 = x_550;
  } else {
    let x_553 : f32 = u_xlat3.y;
    x_546 = x_553;
  }
  let x_554 : f32 = x_546;
  u_xlat0.y = x_554;
  let x_557 : bool = u_xlatb0.z;
  if (x_557) {
    let x_562 : f32 = u_xlat1.z;
    x_558 = x_562;
  } else {
    let x_565 : f32 = u_xlat3.z;
    x_558 = x_565;
  }
  let x_566 : f32 = x_558;
  u_xlat0.z = x_566;
  let x_568 : vec3<f32> = u_xlat0;
  let x_572 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat10 = (x_568 * vec3<f32>(x_572.z, x_572.z, x_572.z));
  let x_576 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_576);
  let x_580 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_582 : vec2<f32> = (vec2<f32>(x_580.x, x_580.y) * vec2<f32>(0.5f, 0.5f));
  let x_583 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_585 : vec3<f32> = u_xlat10;
  let x_588 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec2<f32> = ((vec2<f32>(x_585.y, x_585.z) * vec2<f32>(x_588.x, x_588.y)) + vec2<f32>(x_591.x, x_591.y));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_594.x, x_593.x, x_593.y, x_594.w);
  let x_597 : f32 = u_xlat10.x;
  let x_599 : f32 = x_58.x_Lut2D_Params.y;
  let x_602 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_597 * x_599) + x_602);
  let x_610 : vec4<f32> = u_xlat1;
  let x_612 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_610.x, x_610.z));
  let x_613 : vec3<f32> = vec3<f32>(x_612.x, x_612.y, x_612.z);
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_617 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat22.x = x_617;
  let x_620 : vec2<f32> = u_xlat22;
  let x_621 : vec4<f32> = u_xlat1;
  u_xlat20 = (x_620 + vec2<f32>(x_621.x, x_621.z));
  let x_627 : vec2<f32> = u_xlat20;
  let x_628 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_627);
  let x_629 : vec3<f32> = vec3<f32>(x_628.x, x_628.y, x_628.z);
  let x_630 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_633 : f32 = u_xlat0.x;
  let x_635 : f32 = x_58.x_Lut2D_Params.z;
  let x_638 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_633 * x_635) + -(x_638));
  let x_642 : vec4<f32> = u_xlat3;
  let x_645 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_642.x, x_642.y, x_642.z)) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec3<f32> = u_xlat0;
  let x_650 : vec3<f32> = u_xlat10;
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_648.x, x_648.x, x_648.x) * x_650) + vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : vec3<f32> = u_xlat0;
  let x_658 : vec3<f32> = (x_655 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_661 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_665 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_665 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_669 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_669), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_672 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_672);
  let x_674 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_674 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_678 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_678);
  let x_682 : vec3<f32> = u_xlat0;
  let x_684 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_682.x, x_682.y, x_682.z, x_682.x));
  u_xlatb0 = vec3<bool>(x_684.x, x_684.y, x_684.z);
  let x_687 : bool = u_xlatb0.x;
  if (x_687) {
    let x_692 : f32 = u_xlat1.x;
    x_688 = x_692;
  } else {
    let x_695 : f32 = u_xlat2.x;
    x_688 = x_695;
  }
  let x_696 : f32 = x_688;
  u_xlat0.x = x_696;
  let x_699 : bool = u_xlatb0.y;
  if (x_699) {
    let x_704 : f32 = u_xlat1.y;
    x_700 = x_704;
  } else {
    let x_707 : f32 = u_xlat2.y;
    x_700 = x_707;
  }
  let x_708 : f32 = x_700;
  u_xlat0.y = x_708;
  let x_711 : bool = u_xlatb0.z;
  if (x_711) {
    let x_716 : f32 = u_xlat1.z;
    x_712 = x_716;
  } else {
    let x_719 : f32 = u_xlat2.z;
    x_712 = x_719;
  }
  let x_720 : f32 = x_712;
  u_xlat0.z = x_720;
  let x_722 : vec2<f32> = vs_TEXCOORD0;
  let x_724 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_728 : vec4<f32> = x_58.x_Dithering_Coords;
  let x_730 : vec2<f32> = ((x_722 * vec2<f32>(x_724.x, x_724.y)) + vec2<f32>(x_728.z, x_728.w));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
  let x_738 : vec4<f32> = u_xlat1;
  let x_740 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_738.x, x_738.y));
  u_xlat30 = x_740.w;
  let x_742 : f32 = u_xlat30;
  u_xlat30 = ((x_742 * 2.0f) + -1.0f);
  let x_745 : f32 = u_xlat30;
  u_xlat1.x = ((x_745 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_751, 0.0f, 1.0f);
  let x_755 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_755 * 2.0f) + -1.0f);
  let x_759 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_759)) + 1.0f);
  let x_763 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_763);
  let x_765 : f32 = u_xlat30;
  u_xlat30 = (-(x_765) + 1.0f);
  let x_768 : f32 = u_xlat30;
  let x_770 : f32 = u_xlat1.x;
  u_xlat30 = (x_768 * x_770);
  let x_772 : vec3<f32> = u_xlat0;
  let x_773 : vec3<f32> = (x_772 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_774 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_776), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_779 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_779);
  let x_781 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_781 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_783 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_783);
  let x_785 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_785 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_788 : vec3<f32> = u_xlat0;
  let x_790 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_788.x, x_788.y, x_788.z, x_788.x));
  u_xlatb0 = vec3<bool>(x_790.x, x_790.y, x_790.z);
  let x_793 : bool = u_xlatb0.x;
  if (x_793) {
    let x_798 : f32 = u_xlat1.x;
    x_794 = x_798;
  } else {
    let x_801 : f32 = u_xlat2.x;
    x_794 = x_801;
  }
  let x_802 : f32 = x_794;
  u_xlat0.x = x_802;
  let x_805 : bool = u_xlatb0.y;
  if (x_805) {
    let x_810 : f32 = u_xlat1.y;
    x_806 = x_810;
  } else {
    let x_813 : f32 = u_xlat2.y;
    x_806 = x_813;
  }
  let x_814 : f32 = x_806;
  u_xlat0.y = x_814;
  let x_817 : bool = u_xlatb0.z;
  if (x_817) {
    let x_822 : f32 = u_xlat1.z;
    x_818 = x_822;
  } else {
    let x_825 : f32 = u_xlat2.z;
    x_818 = x_825;
  }
  let x_826 : f32 = x_818;
  u_xlat0.z = x_826;
  let x_828 : f32 = u_xlat30;
  let x_833 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_828, x_828, x_828) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_833);
  let x_835 : vec3<f32> = u_xlat0;
  let x_836 : vec3<f32> = (x_835 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_839 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_841 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_841 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_843 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_843), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_846 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_846);
  let x_848 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_848 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_850 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_850);
  let x_852 : vec3<f32> = u_xlat0;
  let x_854 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_852.x, x_852.y, x_852.z, x_852.x));
  u_xlatb0 = vec3<bool>(x_854.x, x_854.y, x_854.z);
  let x_859 : bool = u_xlatb0.x;
  if (x_859) {
    let x_864 : f32 = u_xlat1.x;
    x_860 = x_864;
  } else {
    let x_867 : f32 = u_xlat2.x;
    x_860 = x_867;
  }
  let x_868 : f32 = x_860;
  SV_Target0.x = x_868;
  let x_872 : bool = u_xlatb0.y;
  if (x_872) {
    let x_877 : f32 = u_xlat1.y;
    x_873 = x_877;
  } else {
    let x_880 : f32 = u_xlat2.y;
    x_873 = x_880;
  }
  let x_881 : f32 = x_873;
  SV_Target0.y = x_881;
  let x_884 : bool = u_xlatb0.z;
  if (x_884) {
    let x_889 : f32 = u_xlat1.z;
    x_885 = x_889;
  } else {
    let x_892 : f32 = u_xlat2.z;
    x_885 = x_892;
  }
  let x_893 : f32 = x_885;
  SV_Target0.z = x_893;
  let x_895 : f32 = u_xlat31;
  SV_Target0.w = x_895;
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

