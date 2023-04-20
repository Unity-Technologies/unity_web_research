diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4<f32>,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(32) */
  x_WorldSpaceLightPos0 : vec4<f32>,
  /* @offset(48) */
  unity_SHAr : vec4<f32>,
  /* @offset(64) */
  unity_SHAg : vec4<f32>,
  /* @offset(80) */
  unity_SHAb : vec4<f32>,
  /* @offset(96) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(160) */
  x_LightColor0 : vec4<f32>,
  /* @offset(176) */
  x_SpecColor : vec4<f32>,
  /* @offset(192) */
  x_FaceUVSpeedX : f32,
  /* @offset(196) */
  x_FaceUVSpeedY : f32,
  /* @offset(208) */
  x_FaceColor : vec4<f32>,
  /* @offset(224) */
  x_OutlineSoftness : f32,
  /* @offset(228) */
  x_OutlineUVSpeedX : f32,
  /* @offset(232) */
  x_OutlineUVSpeedY : f32,
  /* @offset(240) */
  x_OutlineColor : vec4<f32>,
  /* @offset(256) */
  x_OutlineWidth : f32,
  /* @offset(260) */
  x_Bevel : f32,
  /* @offset(264) */
  x_BevelOffset : f32,
  /* @offset(268) */
  x_BevelWidth : f32,
  /* @offset(272) */
  x_BevelClamp : f32,
  /* @offset(276) */
  x_BevelRoundness : f32,
  /* @offset(280) */
  x_BumpOutline : f32,
  /* @offset(284) */
  x_BumpFace : f32,
  /* @offset(288) */
  x_ReflectFaceColor : vec4<f32>,
  /* @offset(304) */
  x_ReflectOutlineColor : vec4<f32>,
  /* @offset(320) */
  x_ShaderFlags : f32,
  /* @offset(324) */
  x_ScaleRatioA : f32,
  /* @offset(328) */
  x_TextureWidth : f32,
  /* @offset(332) */
  x_TextureHeight : f32,
  /* @offset(336) */
  x_GradientScale : f32,
  /* @offset(340) */
  x_FaceShininess : f32,
  /* @offset(344) */
  x_OutlineShininess : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlatb9 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_FaceTex : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat10 : f32;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(0) @binding(4) var x_Cube : texture_cube<f32>;

@group(0) @binding(8) var sampler_Cube : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_223 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD2.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD3.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD4.w;
  u_xlat0.z = x_28;
  let x_31 : vec3<f32> = u_xlat0;
  let x_41 : vec3<f32> = x_36.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_31) + x_41);
  let x_44 : vec3<f32> = u_xlat0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_44, x_45);
  let x_47 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_47);
  let x_49 : vec3<f32> = u_xlat0;
  let x_50 : f32 = u_xlat18;
  let x_56 : vec4<f32> = x_36.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_49 * vec3<f32>(x_50, x_50, x_50)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec3<f32> = u_xlat0;
  let x_60 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_59, x_60);
  let x_62 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_62);
  let x_64 : f32 = u_xlat18;
  let x_66 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_64, x_64, x_64) * x_66);
  let x_72 : f32 = vs_TEXCOORD5.x;
  let x_76 : f32 = x_36.x_BevelOffset;
  u_xlat18 = (x_72 + x_76);
  let x_84 : f32 = x_36.x_TextureWidth;
  let x_87 : f32 = x_36.x_TextureHeight;
  let x_89 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_84, x_87));
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_89.x, x_89.y, x_90.z, x_90.w);
  u_xlat1.z = 0.0f;
  let x_95 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (-(vec4<f32>(x_95.x, x_95.z, x_95.z, x_95.y)) + vec4<f32>(x_99.x, x_99.y, x_99.x, x_99.y));
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec4<f32>(x_102.x, x_102.z, x_102.z, x_102.y) + vec4<f32>(x_104.x, x_104.y, x_104.x, x_104.y));
  let x_118 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_118.x, x_118.y));
  u_xlat3.x = x_120.w;
  let x_126 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_126.z, x_126.w));
  u_xlat3.z = x_128.w;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_134.x, x_134.y));
  u_xlat3.y = x_136.w;
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_142.z, x_142.w));
  u_xlat3.w = x_144.w;
  let x_147 : f32 = u_xlat18;
  let x_149 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec4<f32>(x_147, x_147, x_147, x_147) + x_149);
  let x_151 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_151 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_157 : f32 = x_36.x_BevelWidth;
  let x_160 : f32 = x_36.x_OutlineWidth;
  u_xlat18 = (x_157 + x_160);
  let x_162 : f32 = u_xlat18;
  u_xlat18 = max(x_162, 0.00999999977648258209f);
  let x_165 : vec4<f32> = u_xlat1;
  let x_166 : f32 = u_xlat18;
  u_xlat1 = (x_165 / vec4<f32>(x_166, x_166, x_166, x_166));
  let x_169 : f32 = u_xlat18;
  let x_172 : f32 = x_36.x_Bevel;
  u_xlat18 = (x_169 * x_172);
  let x_174 : f32 = u_xlat18;
  let x_177 : f32 = x_36.x_GradientScale;
  u_xlat18 = (x_174 * x_177);
  let x_179 : f32 = u_xlat18;
  u_xlat18 = (x_179 * -2.0f);
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_182 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_186 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_186, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_190 : vec4<f32> = u_xlat1;
  u_xlat2 = ((x_190 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(abs(x_197)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_204 : f32 = x_36.x_ShaderFlags;
  u_xlat3.x = (x_204 * 0.5f);
  let x_211 : f32 = u_xlat3.x;
  let x_213 : f32 = u_xlat3.x;
  u_xlatb9 = (x_211 >= -(x_213));
  let x_217 : f32 = u_xlat3.x;
  u_xlat3.x = fract(abs(x_217));
  let x_221 : bool = u_xlatb9;
  if (x_221) {
    let x_227 : f32 = u_xlat3.x;
    x_223 = x_227;
  } else {
    let x_230 : f32 = u_xlat3.x;
    x_223 = -(x_230);
  }
  let x_232 : f32 = x_223;
  u_xlat3.x = x_232;
  let x_236 : f32 = u_xlat3.x;
  u_xlatb3 = (x_236 >= 0.5f);
  let x_238 : bool = u_xlatb3;
  let x_239 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = select(x_240, x_239, vec4<bool>(x_238, x_238, x_238, x_238));
  let x_244 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_244 * vec4<f32>(1.57079601287841796875f, 1.57079601287841796875f, 1.57079601287841796875f, 1.57079601287841796875f));
  let x_248 : vec4<f32> = u_xlat2;
  u_xlat2 = sin(x_248);
  let x_250 : vec4<f32> = u_xlat1;
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_250) + x_252);
  let x_256 : f32 = x_36.x_BevelRoundness;
  let x_258 : f32 = x_36.x_BevelRoundness;
  let x_260 : f32 = x_36.x_BevelRoundness;
  let x_262 : f32 = x_36.x_BevelRoundness;
  let x_263 : vec4<f32> = vec4<f32>(x_256, x_258, x_260, x_262);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_263.x, x_263.y, x_263.z, x_263.w) * x_269) + x_271);
  let x_275 : f32 = x_36.x_BevelClamp;
  u_xlat2.x = (-(x_275) + 1.0f);
  let x_279 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_279, vec4<f32>(x_280.x, x_280.x, x_280.x, x_280.x));
  let x_283 : f32 = u_xlat18;
  let x_285 : vec4<f32> = u_xlat1;
  let x_287 : vec2<f32> = (vec2<f32>(x_283, x_283) * vec2<f32>(x_285.x, x_285.z));
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_288.y, x_287.y, x_288.w);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : f32 = u_xlat18;
  let x_295 : vec4<f32> = u_xlat1;
  let x_298 : vec2<f32> = ((vec2<f32>(x_290.w, x_290.y) * vec2<f32>(x_292, x_292)) + -(vec2<f32>(x_295.z, x_295.x)));
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_298.x, x_298.y, x_299.w);
  u_xlat1.x = -1.0f;
  u_xlat1.w = 1.0f;
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec2<f32>(x_303.x, x_303.y), vec2<f32>(x_305.x, x_305.y));
  let x_308 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_308);
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat19 = dot(vec2<f32>(x_311.z, x_311.w), vec2<f32>(x_313.z, x_313.w));
  let x_316 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_316);
  let x_318 : f32 = u_xlat19;
  let x_320 : f32 = u_xlat1.z;
  u_xlat2.x = (x_318 * x_320);
  let x_323 : f32 = u_xlat19;
  let x_326 : vec2<f32> = (vec2<f32>(x_323, x_323) * vec2<f32>(1.0f, 0.0f));
  let x_327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_327.x, x_326.x, x_326.y, x_327.w);
  u_xlat1.z = 0.0f;
  let x_330 : f32 = u_xlat18;
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = u_xlat2;
  let x_341 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat1;
  let x_349 : vec4<f32> = u_xlat3;
  let x_352 : vec3<f32> = ((vec3<f32>(x_344.z, x_344.x, x_344.y) * vec3<f32>(x_346.y, x_346.z, x_346.x)) + -(vec3<f32>(x_349.x, x_349.y, x_349.z)));
  let x_353 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_357 : f32 = x_36.x_OutlineUVSpeedX;
  let x_360 : f32 = x_36.x_OutlineUVSpeedY;
  let x_364 : vec4<f32> = x_36.x_Time;
  let x_368 : vec2<f32> = vs_TEXCOORD1;
  let x_369 : vec2<f32> = ((vec2<f32>(x_357, x_360) * vec2<f32>(x_364.y, x_364.y)) + x_368);
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_377.x, x_377.y));
  u_xlat2 = x_379;
  let x_380 : vec4<f32> = u_xlat2;
  let x_384 : vec4<f32> = x_36.x_OutlineColor;
  let x_386 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_391 : f32 = vs_COLOR0.w;
  let x_393 : f32 = x_36.x_OutlineColor.w;
  u_xlat18 = (x_391 * x_393);
  let x_396 : f32 = u_xlat2.w;
  let x_397 : f32 = u_xlat18;
  u_xlat3.w = (x_396 * x_397);
  let x_400 : vec4<f32> = u_xlat2;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.w, x_402.w, x_402.w));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : f32 = x_36.x_FaceUVSpeedX;
  let x_412 : f32 = x_36.x_FaceUVSpeedY;
  let x_415 : vec4<f32> = x_36.x_Time;
  let x_418 : vec4<f32> = vs_TEXCOORD0;
  let x_420 : vec2<f32> = ((vec2<f32>(x_409, x_412) * vec2<f32>(x_415.y, x_415.y)) + vec2<f32>(x_418.z, x_418.w));
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_420.x, x_420.y, x_421.z, x_421.w);
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_428.x, x_428.y));
  u_xlat2 = x_430;
  let x_432 : vec4<f32> = vs_COLOR0;
  let x_435 : vec4<f32> = x_36.x_FaceColor;
  u_xlat4 = (x_432 * x_435);
  let x_437 : vec4<f32> = u_xlat2;
  let x_438 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_437 * x_438);
  let x_440 : vec4<f32> = u_xlat2;
  let x_442 : vec4<f32> = u_xlat2;
  let x_444 : vec3<f32> = (vec3<f32>(x_440.w, x_440.w, x_440.w) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat2;
  let x_449 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_447) + x_449);
  let x_452 : f32 = x_36.x_OutlineWidth;
  let x_455 : f32 = x_36.x_ScaleRatioA;
  u_xlat18 = (x_452 * x_455);
  let x_457 : f32 = u_xlat18;
  let x_459 : f32 = vs_TEXCOORD5.y;
  u_xlat18 = (x_457 * x_459);
  let x_461 : f32 = u_xlat18;
  u_xlat19 = min(x_461, 1.0f);
  let x_463 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_463);
  let x_468 : vec4<f32> = vs_TEXCOORD0;
  let x_470 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_468.x, x_468.y));
  u_xlat4.x = x_470.w;
  let x_474 : f32 = u_xlat4.x;
  u_xlat4.x = (-(x_474) + 0.5f);
  let x_479 : f32 = u_xlat4.x;
  let x_481 : f32 = vs_TEXCOORD5.x;
  u_xlat4.x = (x_479 + -(x_481));
  let x_486 : f32 = u_xlat4.x;
  let x_488 : f32 = vs_TEXCOORD5.y;
  u_xlat4.x = ((x_486 * x_488) + 0.5f);
  let x_493 : f32 = u_xlat18;
  let x_496 : f32 = u_xlat4.x;
  u_xlat10 = ((x_493 * 0.5f) + x_496);
  let x_498 : f32 = u_xlat10;
  u_xlat10 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat18;
  let x_504 : f32 = u_xlat4.x;
  u_xlat18 = ((-(x_500) * 0.5f) + x_504);
  let x_506 : f32 = u_xlat19;
  let x_507 : f32 = u_xlat10;
  u_xlat19 = (x_506 * x_507);
  let x_509 : f32 = u_xlat19;
  let x_511 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_509, x_509, x_509, x_509) * x_511) + x_513);
  let x_517 : f32 = x_36.x_OutlineSoftness;
  let x_519 : f32 = x_36.x_ScaleRatioA;
  u_xlat19 = (x_517 * x_519);
  let x_521 : f32 = u_xlat19;
  let x_523 : f32 = vs_TEXCOORD5.y;
  u_xlat3.x = (x_521 * x_523);
  let x_526 : f32 = u_xlat19;
  let x_528 : f32 = vs_TEXCOORD5.y;
  u_xlat19 = ((x_526 * x_528) + 1.0f);
  let x_532 : f32 = u_xlat3.x;
  let x_534 : f32 = u_xlat18;
  u_xlat18 = ((x_532 * 0.5f) + x_534);
  let x_536 : f32 = u_xlat18;
  let x_537 : f32 = u_xlat19;
  u_xlat18 = (x_536 / x_537);
  let x_539 : f32 = u_xlat18;
  u_xlat18 = clamp(x_539, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat18;
  u_xlat18 = (-(x_541) + 1.0f);
  let x_544 : f32 = u_xlat18;
  let x_546 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_544, x_544, x_544, x_544) * x_546);
  let x_550 : f32 = x_36.x_BumpFace;
  let x_554 : f32 = x_36.x_BumpOutline;
  u_xlat18 = (-(x_550) + x_554);
  let x_556 : f32 = u_xlat10;
  let x_557 : f32 = u_xlat18;
  let x_560 : f32 = x_36.x_BumpFace;
  u_xlat18 = ((x_556 * x_557) + x_560);
  let x_567 : vec4<f32> = vs_TEXCOORD0;
  let x_569 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_567.z, x_567.w));
  let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.w);
  let x_571 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat3.z;
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = (x_574 * x_576);
  let x_579 : vec4<f32> = u_xlat3;
  let x_584 : vec2<f32> = ((vec2<f32>(x_579.x, x_579.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(vec2<f32>(x_587.x, x_587.y), vec2<f32>(x_589.x, x_589.y));
  let x_592 : f32 = u_xlat19;
  u_xlat19 = min(x_592, 1.0f);
  let x_594 : f32 = u_xlat19;
  u_xlat19 = (-(x_594) + 1.0f);
  let x_597 : f32 = u_xlat19;
  u_xlat3.z = sqrt(x_597);
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : f32 = u_xlat18;
  let x_607 : vec3<f32> = ((vec3<f32>(x_600.x, x_600.y, x_600.z) * vec3<f32>(x_602, x_602, x_602)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec4<f32> = u_xlat3;
  let x_616 : vec3<f32> = ((vec3<f32>(x_610.w, x_610.w, x_610.w) * vec3<f32>(x_612.x, x_612.y, x_612.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec4<f32> = u_xlat3;
  let x_624 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) + -(vec3<f32>(x_621.x, x_621.y, x_621.z)));
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : vec4<f32> = u_xlat1;
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_632);
  let x_634 : f32 = u_xlat18;
  let x_636 : vec4<f32> = u_xlat1;
  let x_638 : vec3<f32> = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_641 : vec4<f32> = vs_TEXCOORD2;
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), -(vec3<f32>(x_643.x, x_643.y, x_643.z)));
  let x_648 : vec4<f32> = vs_TEXCOORD3;
  let x_650 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(vec3<f32>(x_648.x, x_648.y, x_648.z), -(vec3<f32>(x_650.x, x_650.y, x_650.z)));
  let x_655 : vec4<f32> = vs_TEXCOORD4;
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), -(vec3<f32>(x_657.x, x_657.y, x_657.z)));
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_667);
  let x_669 : f32 = u_xlat18;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_676.x, x_676.y, x_676.z), x_678);
  let x_682 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_682, 0.0f);
  let x_686 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_686);
  let x_692 : f32 = x_36.x_FaceShininess;
  let x_696 : f32 = x_36.x_OutlineShininess;
  u_xlat6.x = (-(x_692) + x_696);
  let x_699 : f32 = u_xlat10;
  let x_701 : f32 = u_xlat6.x;
  let x_704 : f32 = x_36.x_FaceShininess;
  u_xlat6.x = ((x_699 * x_701) + x_704);
  let x_708 : f32 = u_xlat6.x;
  u_xlat6.x = (x_708 * 128.0f);
  let x_713 : f32 = u_xlat0.x;
  let x_715 : f32 = u_xlat6.x;
  u_xlat0.x = (x_713 * x_715);
  let x_719 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_719);
  let x_724 : vec4<f32> = x_36.x_LightColor0;
  let x_728 : vec4<f32> = x_36.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec3<f32> = u_xlat0;
  let x_733 : vec3<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_731.x, x_731.x, x_731.x) * x_733);
  let x_735 : vec4<f32> = u_xlat3;
  let x_738 : vec4<f32> = x_36.x_WorldSpaceLightPos0;
  u_xlat18 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(x_738.x, x_738.y, x_738.z));
  let x_741 : f32 = u_xlat18;
  u_xlat18 = max(x_741, 0.0f);
  let x_744 : f32 = u_xlat2.w;
  u_xlat19 = max(x_744, 0.00009999999747378752f);
  let x_747 : vec4<f32> = u_xlat2;
  let x_749 : f32 = u_xlat19;
  let x_751 : vec3<f32> = (vec3<f32>(x_747.x, x_747.y, x_747.z) / vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat2;
  let x_757 : vec4<f32> = x_36.x_LightColor0;
  let x_759 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_759.x, x_760.y, x_759.y, x_759.z);
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : f32 = u_xlat18;
  let x_767 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_762.x, x_762.z, x_762.w) * vec3<f32>(x_764, x_764, x_764)) + x_767);
  u_xlat3.w = 1.0f;
  let x_773 : vec4<f32> = x_36.unity_SHAr;
  let x_774 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_773, x_774);
  let x_779 : vec4<f32> = x_36.unity_SHAg;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_779, x_780);
  let x_785 : vec4<f32> = x_36.unity_SHAb;
  let x_786 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_785, x_786);
  let x_789 : vec3<f32> = u_xlat5;
  let x_792 : vec3<f32> = vs_TEXCOORD7;
  let x_793 : vec3<f32> = (x_789 + x_792);
  let x_794 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat3;
  let x_799 : vec3<f32> = max(vec3<f32>(x_796.x, x_796.y, x_796.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_800 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat2;
  let x_804 : vec4<f32> = u_xlat3;
  let x_807 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + x_807);
  let x_811 : vec4<f32> = x_36.x_ReflectFaceColor;
  let x_816 : vec4<f32> = x_36.x_ReflectOutlineColor;
  let x_818 : vec3<f32> = (-(vec3<f32>(x_811.x, x_811.y, x_811.z)) + vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : f32 = u_xlat10;
  let x_823 : vec4<f32> = u_xlat2;
  let x_827 : vec4<f32> = x_36.x_ReflectFaceColor;
  let x_829 : vec3<f32> = ((vec3<f32>(x_821, x_821, x_821) * vec3<f32>(x_823.x, x_823.y, x_823.z)) + vec3<f32>(x_827.x, x_827.y, x_827.z));
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat1;
  let x_836 : vec4<f32> = x_36.unity_ObjectToWorld[1i];
  let x_838 : vec3<f32> = (vec3<f32>(x_832.y, x_832.y, x_832.y) * vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : vec4<f32> = x_36.unity_ObjectToWorld[0i];
  let x_844 : vec4<f32> = u_xlat1;
  let x_847 : vec4<f32> = u_xlat3;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_844.x, x_844.x, x_844.x)) + vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_849.z);
  let x_853 : vec4<f32> = x_36.unity_ObjectToWorld[2i];
  let x_855 : vec4<f32> = u_xlat1;
  let x_858 : vec4<f32> = u_xlat1;
  let x_860 : vec3<f32> = ((vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855.z, x_855.z, x_855.z)) + vec3<f32>(x_858.x, x_858.y, x_858.w));
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_864 : vec3<f32> = vs_TEXCOORD6;
  let x_865 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(x_864, vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat18;
  let x_869 : f32 = u_xlat18;
  u_xlat18 = (x_868 + x_869);
  let x_871 : vec4<f32> = u_xlat1;
  let x_873 : f32 = u_xlat18;
  let x_877 : vec3<f32> = vs_TEXCOORD6;
  let x_878 : vec3<f32> = ((vec3<f32>(x_871.x, x_871.y, x_871.z) * -(vec3<f32>(x_873, x_873, x_873))) + x_877);
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_889 : vec4<f32> = u_xlat1;
  let x_891 : vec4<f32> = textureSample(x_Cube, sampler_Cube, vec3<f32>(x_889.x, x_889.y, x_889.z));
  let x_892 : vec3<f32> = vec3<f32>(x_891.x, x_891.y, x_891.z);
  let x_893 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat2;
  let x_897 : vec4<f32> = u_xlat1;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_904 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat2;
  let x_909 : vec3<f32> = u_xlat0;
  let x_910 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(x_906.w, x_906.w, x_906.w)) + x_909);
  let x_911 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_914 : f32 = u_xlat2.w;
  SV_Target0.w = x_914;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD5_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(8) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


