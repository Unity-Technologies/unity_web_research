struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_58 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_296 : f32;
  var x_308 : f32;
  var x_320 : f32;
  var x_461 : f32;
  var x_473 : f32;
  var x_485 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_38 : vec2<f32> = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_39 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_38.x, x_38.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat7;
  let x_44 : vec3<f32> = u_xlat7;
  u_xlat21 = dot(vec2<f32>(x_42.x, x_42.y), vec2<f32>(x_44.x, x_44.y));
  let x_47 : f32 = u_xlat21;
  let x_49 : vec3<f32> = u_xlat7;
  let x_51 : vec2<f32> = (vec2<f32>(x_47, x_47) * vec2<f32>(x_49.x, x_49.y));
  let x_52 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_51.x, x_51.y, x_52.z);
  let x_54 : vec3<f32> = u_xlat7;
  let x_63 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_65 : f32 = x_58.x_ChromaticAberration_Amount;
  let x_66 : vec2<f32> = vec2<f32>(x_63, x_65);
  let x_70 : vec2<f32> = (vec2<f32>(x_54.x, x_54.y) * vec2<f32>(x_66.x, x_66.y));
  let x_71 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_75 : vec3<f32> = u_xlat7;
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
  u_xlat21 = dot(vec2<f32>(x_93.x, x_93.y), vec2<f32>(x_95.x, x_95.y));
  let x_98 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_98);
  let x_102 : f32 = u_xlat21;
  u_xlati21 = i32(x_102);
  let x_104 : i32 = u_xlati21;
  u_xlati21 = max(x_104, 3i);
  let x_107 : i32 = u_xlati21;
  u_xlati21 = min(x_107, 16i);
  let x_110 : i32 = u_xlati21;
  u_xlat1.x = f32(x_110);
  let x_113 : vec3<f32> = u_xlat7;
  let x_116 : vec4<f32> = u_xlat1;
  let x_118 : vec2<f32> = (-(vec2<f32>(x_113.x, x_113.y)) / vec2<f32>(x_116.x, x_116.x));
  let x_119 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_118.x, x_118.y, x_119.z);
  u_xlat2.y = 0.0f;
  u_xlat16.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_144 : vec2<f32> = vs_TEXCOORD0;
  u_xlat8 = x_144;
  u_xlati_loop_1 = 0i;
  loop {
    let x_153 : i32 = u_xlati_loop_1;
    let x_154 : i32 = u_xlati21;
    if ((x_153 < x_154)) {
    } else {
      break;
    }
    let x_158 : i32 = u_xlati_loop_1;
    u_xlat6.x = f32(x_158);
    let x_162 : f32 = u_xlat6.x;
    u_xlat6.x = (x_162 + 0.5f);
    let x_166 : f32 = u_xlat6.x;
    let x_168 : f32 = u_xlat1.x;
    u_xlat2.x = (x_166 / x_168);
    let x_171 : vec2<f32> = u_xlat8;
    let x_172 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
    let x_174 : vec4<f32> = u_xlat6;
    let x_178 : vec2<f32> = clamp(vec2<f32>(x_174.x, x_174.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_179 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_178.x, x_178.y, x_179.z, x_179.w);
    let x_181 : vec4<f32> = u_xlat6;
    let x_184 : f32 = x_58.x_RenderViewportScaleFactor;
    let x_186 : vec2<f32> = (vec2<f32>(x_181.x, x_181.y) * vec2<f32>(x_184, x_184));
    let x_187 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_194.x, x_194.y), 0.0f);
    u_xlat6 = x_196;
    let x_202 : vec3<f32> = u_xlat2;
    let x_204 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_202.x, x_202.y), 0.0f);
    let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
    let x_206 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat6;
    let x_209 : vec4<f32> = u_xlat3;
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_208 * x_209) + x_211);
    let x_213 : vec4<f32> = u_xlat3;
    let x_214 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_213 + x_214);
    let x_216 : vec3<f32> = u_xlat7;
    let x_218 : vec2<f32> = u_xlat8;
    u_xlat8 = (vec2<f32>(x_216.x, x_216.y) + x_218);

    continuing {
      let x_220 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_220 + 1i);
    }
  }
  let x_222 : vec4<f32> = u_xlat4;
  let x_223 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_222 / x_223);
  let x_225 : vec3<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_225.x, x_225.x, x_225.x) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_230, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_235 : f32 = u_xlat1.w;
  u_xlat1.w = x_235;
  let x_238 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_238, 0.0f, 1.0f);
  let x_241 : vec3<f32> = u_xlat0;
  let x_245 : vec3<f32> = (vec3<f32>(x_241.z, x_241.x, x_241.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_246 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec3<f32> = u_xlat0;
  let x_252 : vec3<f32> = max(vec3<f32>(x_248.z, x_248.x, x_248.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_253 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat4;
  let x_257 : vec3<f32> = log2(vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat4;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec3<f32> = exp2(vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_272 : vec4<f32> = u_xlat4;
  let x_279 : vec3<f32> = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_287 : vec3<f32> = u_xlat0;
  let x_290 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_287.z, x_287.x, x_287.y, x_287.z));
  u_xlatb0 = vec3<bool>(x_290.x, x_290.y, x_290.z);
  let x_294 : bool = u_xlatb0.x;
  if (x_294) {
    let x_300 : f32 = u_xlat3.x;
    x_296 = x_300;
  } else {
    let x_303 : f32 = u_xlat4.x;
    x_296 = x_303;
  }
  let x_304 : f32 = x_296;
  u_xlat0.x = x_304;
  let x_307 : bool = u_xlatb0.y;
  if (x_307) {
    let x_312 : f32 = u_xlat3.y;
    x_308 = x_312;
  } else {
    let x_315 : f32 = u_xlat4.y;
    x_308 = x_315;
  }
  let x_316 : f32 = x_308;
  u_xlat0.y = x_316;
  let x_319 : bool = u_xlatb0.z;
  if (x_319) {
    let x_324 : f32 = u_xlat3.z;
    x_320 = x_324;
  } else {
    let x_327 : f32 = u_xlat4.z;
    x_320 = x_327;
  }
  let x_328 : f32 = x_320;
  u_xlat0.z = x_328;
  let x_330 : vec3<f32> = u_xlat0;
  let x_333 : vec3<f32> = x_58.x_Lut2D_Params;
  u_xlat7 = (x_330 * vec3<f32>(x_333.z, x_333.z, x_333.z));
  let x_337 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_337);
  let x_341 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_343 : vec2<f32> = (vec2<f32>(x_341.x, x_341.y) * vec2<f32>(0.5f, 0.5f));
  let x_344 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  let x_346 : vec3<f32> = u_xlat7;
  let x_349 : vec3<f32> = x_58.x_Lut2D_Params;
  let x_352 : vec3<f32> = u_xlat2;
  let x_354 : vec2<f32> = ((vec2<f32>(x_346.y, x_346.z) * vec2<f32>(x_349.x, x_349.y)) + vec2<f32>(x_352.x, x_352.y));
  let x_355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_354.x, x_354.y, x_355.w);
  let x_358 : f32 = u_xlat7.x;
  let x_360 : f32 = x_58.x_Lut2D_Params.y;
  let x_363 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_358 * x_360) + x_363);
  let x_371 : vec4<f32> = u_xlat3;
  let x_373 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_371.x, x_371.z));
  let x_374 : vec3<f32> = vec3<f32>(x_373.x, x_373.y, x_373.z);
  let x_375 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
  let x_378 : f32 = x_58.x_Lut2D_Params.y;
  u_xlat16.x = x_378;
  let x_381 : vec2<f32> = u_xlat16;
  let x_382 : vec4<f32> = u_xlat3;
  u_xlat14 = (x_381 + vec2<f32>(x_382.x, x_382.z));
  let x_388 : vec2<f32> = u_xlat14;
  let x_389 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_388);
  u_xlat2 = vec3<f32>(x_389.x, x_389.y, x_389.z);
  let x_392 : f32 = u_xlat0.x;
  let x_394 : f32 = x_58.x_Lut2D_Params.z;
  let x_397 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_392 * x_394) + -(x_397));
  let x_401 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_401.x, x_401.y, x_401.z)) + x_404);
  let x_406 : vec3<f32> = u_xlat0;
  let x_408 : vec3<f32> = u_xlat7;
  let x_410 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_406.x, x_406.x, x_406.x) * x_408) + vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_413 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_417 : vec3<f32> = u_xlat0;
  let x_420 : vec3<f32> = (x_417 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_421 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat3;
  let x_427 : vec3<f32> = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec4<f32> = u_xlat3;
  let x_433 : vec3<f32> = max(abs(vec3<f32>(x_430.x, x_430.y, x_430.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat3;
  let x_438 : vec3<f32> = log2(vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : vec4<f32> = u_xlat3;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat3;
  let x_450 : vec3<f32> = exp2(vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_455 : vec3<f32> = u_xlat0;
  let x_457 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.x));
  u_xlatb0 = vec3<bool>(x_457.x, x_457.y, x_457.z);
  let x_460 : bool = u_xlatb0.x;
  if (x_460) {
    let x_465 : f32 = u_xlat2.x;
    x_461 = x_465;
  } else {
    let x_468 : f32 = u_xlat3.x;
    x_461 = x_468;
  }
  let x_469 : f32 = x_461;
  u_xlat1.x = x_469;
  let x_472 : bool = u_xlatb0.y;
  if (x_472) {
    let x_477 : f32 = u_xlat2.y;
    x_473 = x_477;
  } else {
    let x_480 : f32 = u_xlat3.y;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat1.y = x_481;
  let x_484 : bool = u_xlatb0.z;
  if (x_484) {
    let x_489 : f32 = u_xlat2.z;
    x_485 = x_489;
  } else {
    let x_492 : f32 = u_xlat3.z;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat1.z = x_493;
  let x_497 : f32 = x_58.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_497);
  let x_501 : bool = u_xlatb0.x;
  if (x_501) {
    let x_504 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_504.x, x_504.y, x_504.z);
    let x_506 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_506, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_510 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_510, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_519 : vec4<f32> = u_xlat1;
  SV_Target0 = x_519;
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

