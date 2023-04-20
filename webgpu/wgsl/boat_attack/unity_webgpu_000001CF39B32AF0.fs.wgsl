diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_Time : vec4<f32>,
  /* @offset(16) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(32) */
  x_WorldSpaceLightPos0 : vec4<f32>,
  /* @offset(48) */
  x_LightColor0 : vec4<f32>,
  /* @offset(64) */
  x_SpecColor : vec4<f32>,
  /* @offset(80) */
  unity_WorldToLight : mat4x4<f32>,
  /* @offset(144) */
  x_FaceUVSpeedX : f32,
  /* @offset(148) */
  x_FaceUVSpeedY : f32,
  /* @offset(160) */
  x_FaceColor : vec4<f32>,
  /* @offset(176) */
  x_OutlineSoftness : f32,
  /* @offset(180) */
  x_OutlineUVSpeedX : f32,
  /* @offset(184) */
  x_OutlineUVSpeedY : f32,
  /* @offset(192) */
  x_OutlineColor : vec4<f32>,
  /* @offset(208) */
  x_OutlineWidth : f32,
  /* @offset(212) */
  x_Bevel : f32,
  /* @offset(216) */
  x_BevelOffset : f32,
  /* @offset(220) */
  x_BevelWidth : f32,
  /* @offset(224) */
  x_BevelClamp : f32,
  /* @offset(228) */
  x_BevelRoundness : f32,
  /* @offset(232) */
  x_BumpOutline : f32,
  /* @offset(236) */
  x_BumpFace : f32,
  /* @offset(240) */
  x_ShaderFlags : f32,
  /* @offset(244) */
  x_ScaleRatioA : f32,
  /* @offset(248) */
  x_TextureWidth : f32,
  /* @offset(252) */
  x_TextureHeight : f32,
  /* @offset(256) */
  x_GradientScale : f32,
  /* @offset(260) */
  x_FaceShininess : f32,
  /* @offset(264) */
  x_OutlineShininess : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat5 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_FaceTex : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlat6 : f32;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat4 : f32;

var<private> u_xlat8 : f32;

@group(0) @binding(5) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_184 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD6.x;
  let x_27 : f32 = x_22.x_BevelOffset;
  u_xlat0.x = (x_17 + x_27);
  let x_36 : f32 = x_22.x_TextureWidth;
  let x_39 : f32 = x_22.x_TextureHeight;
  let x_41 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_36, x_39));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_42.z, x_42.w);
  u_xlat1.z = 0.0f;
  let x_48 : vec4<f32> = u_xlat1;
  let x_53 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (-(vec4<f32>(x_48.x, x_48.z, x_48.z, x_48.y)) + vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y));
  let x_56 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec4<f32>(x_56.x, x_56.z, x_56.z, x_56.y) + vec4<f32>(x_58.x, x_58.y, x_58.x, x_58.y));
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_72.x, x_72.y));
  u_xlat3.x = x_74.w;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_81.z, x_81.w));
  u_xlat3.z = x_83.w;
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_89.x, x_89.y));
  u_xlat3.y = x_91.w;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_98.z, x_98.w));
  u_xlat3.w = x_100.w;
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x) + x_105);
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_107 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_113 : f32 = x_22.x_BevelWidth;
  let x_116 : f32 = x_22.x_OutlineWidth;
  u_xlat1.x = (x_113 + x_116);
  let x_120 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_120, 0.00999999977648258209f);
  let x_124 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_124 / vec4<f32>(x_125.x, x_125.x, x_125.x, x_125.x));
  let x_129 : f32 = u_xlat1.x;
  let x_132 : f32 = x_22.x_Bevel;
  u_xlat1.x = (x_129 * x_132);
  let x_136 : f32 = u_xlat1.x;
  let x_139 : f32 = x_22.x_GradientScale;
  u_xlat1.x = (x_136 * x_139);
  let x_143 : f32 = u_xlat1.x;
  u_xlat1.x = (x_143 * -2.0f);
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_147 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_151, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_155 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_155 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(abs(x_162)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_170 : f32 = x_22.x_ShaderFlags;
  u_xlat5 = (x_170 * 0.5f);
  let x_175 : f32 = u_xlat5;
  let x_176 : f32 = u_xlat5;
  u_xlatb9 = (x_175 >= -(x_176));
  let x_179 : f32 = u_xlat5;
  u_xlat5 = fract(abs(x_179));
  let x_182 : bool = u_xlatb9;
  if (x_182) {
    let x_187 : f32 = u_xlat5;
    x_184 = x_187;
  } else {
    let x_189 : f32 = u_xlat5;
    x_184 = -(x_189);
  }
  let x_191 : f32 = x_184;
  u_xlat5 = x_191;
  let x_193 : f32 = u_xlat5;
  u_xlatb5 = (x_193 >= 0.5f);
  let x_195 : bool = u_xlatb5;
  let x_196 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = select(x_197, x_196, vec4<bool>(x_195, x_195, x_195, x_195));
  let x_201 : vec4<f32> = u_xlat0;
  u_xlat2 = (x_201 * vec4<f32>(1.57079601287841796875f, 1.57079601287841796875f, 1.57079601287841796875f, 1.57079601287841796875f));
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = sin(x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_207) + x_209);
  let x_213 : f32 = x_22.x_BevelRoundness;
  let x_215 : f32 = x_22.x_BevelRoundness;
  let x_217 : f32 = x_22.x_BevelRoundness;
  let x_219 : f32 = x_22.x_BevelRoundness;
  let x_220 : vec4<f32> = vec4<f32>(x_213, x_215, x_217, x_219);
  let x_226 : vec4<f32> = u_xlat2;
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.w) * x_226) + x_228);
  let x_232 : f32 = x_22.x_BevelClamp;
  u_xlat5 = (-(x_232) + 1.0f);
  let x_235 : vec4<f32> = u_xlat0;
  let x_236 : f32 = u_xlat5;
  u_xlat0 = min(x_235, vec4<f32>(x_236, x_236, x_236, x_236));
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec2<f32> = (vec2<f32>(x_239.x, x_239.x) * vec2<f32>(x_241.x, x_241.z));
  let x_244 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_243.x, x_244.y, x_243.y, x_244.w);
  let x_246 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat0;
  let x_254 : vec2<f32> = ((vec2<f32>(x_246.w, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + -(vec2<f32>(x_251.z, x_251.x)));
  let x_255 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_255.x, x_254.x, x_254.y, x_255.w);
  u_xlat0.x = -1.0f;
  u_xlat0.w = 1.0f;
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_259.x, x_259.y), vec2<f32>(x_261.x, x_261.y));
  let x_266 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_266);
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec2<f32>(x_270.z, x_270.w), vec2<f32>(x_272.z, x_272.w));
  let x_275 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_275);
  let x_277 : f32 = u_xlat12;
  let x_279 : f32 = u_xlat0.z;
  u_xlat2.x = (x_277 * x_279);
  let x_282 : f32 = u_xlat12;
  let x_285 : vec2<f32> = (vec2<f32>(x_282, x_282) * vec2<f32>(1.0f, 0.0f));
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_286.w);
  u_xlat0.z = 0.0f;
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec4<f32> = u_xlat0;
  let x_293 : vec3<f32> = (vec3<f32>(x_289.x, x_289.x, x_289.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat0;
  let x_298 : vec4<f32> = u_xlat2;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_305 : vec4<f32> = u_xlat0;
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = ((vec3<f32>(x_303.z, x_303.x, x_303.y) * vec3<f32>(x_305.y, x_305.z, x_305.x)) + -(vec3<f32>(x_308.x, x_308.y, x_308.z)));
  let x_312 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_316 : f32 = x_22.x_OutlineUVSpeedX;
  let x_319 : f32 = x_22.x_OutlineUVSpeedY;
  let x_324 : vec4<f32> = x_22.x_Time;
  let x_328 : vec2<f32> = vs_TEXCOORD1;
  let x_329 : vec2<f32> = ((vec2<f32>(x_316, x_319) * vec2<f32>(x_324.y, x_324.y)) + x_328);
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
  let x_337 : vec4<f32> = u_xlat1;
  let x_339 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_337.x, x_337.y));
  u_xlat1 = x_339;
  let x_340 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = x_22.x_OutlineColor;
  let x_346 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_351 : f32 = vs_COLOR0.w;
  let x_353 : f32 = x_22.x_OutlineColor.w;
  u_xlat12 = (x_351 * x_353);
  let x_356 : f32 = u_xlat1.w;
  let x_357 : f32 = u_xlat12;
  u_xlat2.w = (x_356 * x_357);
  let x_360 : vec4<f32> = u_xlat1;
  let x_362 : vec4<f32> = u_xlat2;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.w, x_362.w, x_362.w));
  let x_365 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : f32 = x_22.x_FaceUVSpeedX;
  let x_372 : f32 = x_22.x_FaceUVSpeedY;
  let x_375 : vec4<f32> = x_22.x_Time;
  let x_378 : vec4<f32> = vs_TEXCOORD0;
  let x_380 : vec2<f32> = ((vec2<f32>(x_369, x_372) * vec2<f32>(x_375.y, x_375.y)) + vec2<f32>(x_378.z, x_378.w));
  let x_381 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
  let x_388 : vec4<f32> = u_xlat1;
  let x_390 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_388.x, x_388.y));
  u_xlat1 = x_390;
  let x_391 : vec4<f32> = vs_COLOR0;
  let x_394 : vec4<f32> = x_22.x_FaceColor;
  u_xlat3 = (x_391 * x_394);
  let x_396 : vec4<f32> = u_xlat1;
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_396 * x_397);
  let x_399 : vec4<f32> = u_xlat1;
  let x_401 : vec4<f32> = u_xlat1;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.w, x_399.w, x_399.w) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_406) + x_408);
  let x_411 : f32 = x_22.x_OutlineWidth;
  let x_414 : f32 = x_22.x_ScaleRatioA;
  u_xlat12 = (x_411 * x_414);
  let x_416 : f32 = u_xlat12;
  let x_418 : f32 = vs_TEXCOORD6.y;
  u_xlat12 = (x_416 * x_418);
  let x_420 : f32 = u_xlat12;
  u_xlat3.x = min(x_420, 1.0f);
  let x_424 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_424);
  let x_431 : vec4<f32> = vs_TEXCOORD0;
  let x_433 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_431.x, x_431.y));
  u_xlat7 = x_433.w;
  let x_435 : f32 = u_xlat7;
  u_xlat7 = (-(x_435) + 0.5f);
  let x_438 : f32 = u_xlat7;
  let x_440 : f32 = vs_TEXCOORD6.x;
  u_xlat7 = (x_438 + -(x_440));
  let x_443 : f32 = u_xlat7;
  let x_445 : f32 = vs_TEXCOORD6.y;
  u_xlat7 = ((x_443 * x_445) + 0.5f);
  let x_449 : f32 = u_xlat12;
  let x_451 : f32 = u_xlat7;
  u_xlat11 = ((x_449 * 0.5f) + x_451);
  let x_453 : f32 = u_xlat11;
  u_xlat11 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat12;
  let x_458 : f32 = u_xlat7;
  u_xlat12 = ((-(x_455) * 0.5f) + x_458);
  let x_461 : f32 = u_xlat3.x;
  let x_462 : f32 = u_xlat11;
  u_xlat3.x = (x_461 * x_462);
  let x_465 : vec4<f32> = u_xlat3;
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_465.x, x_465.x, x_465.x, x_465.x) * x_467) + x_469);
  let x_473 : f32 = x_22.x_OutlineSoftness;
  let x_475 : f32 = x_22.x_ScaleRatioA;
  u_xlat2.x = (x_473 * x_475);
  let x_480 : f32 = u_xlat2.x;
  let x_482 : f32 = vs_TEXCOORD6.y;
  u_xlat6 = (x_480 * x_482);
  let x_485 : f32 = u_xlat2.x;
  let x_487 : f32 = vs_TEXCOORD6.y;
  u_xlat2.x = ((x_485 * x_487) + 1.0f);
  let x_491 : f32 = u_xlat6;
  let x_493 : f32 = u_xlat12;
  u_xlat12 = ((x_491 * 0.5f) + x_493);
  let x_495 : f32 = u_xlat12;
  let x_497 : f32 = u_xlat2.x;
  u_xlat12 = (x_495 / x_497);
  let x_499 : f32 = u_xlat12;
  u_xlat12 = clamp(x_499, 0.0f, 1.0f);
  let x_501 : f32 = u_xlat12;
  u_xlat12 = (-(x_501) + 1.0f);
  let x_504 : f32 = u_xlat12;
  let x_506 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_504, x_504, x_504, x_504) * x_506);
  let x_510 : f32 = x_22.x_BumpFace;
  let x_514 : f32 = x_22.x_BumpOutline;
  u_xlat12 = (-(x_510) + x_514);
  let x_516 : f32 = u_xlat11;
  let x_517 : f32 = u_xlat12;
  let x_520 : f32 = x_22.x_BumpFace;
  u_xlat12 = ((x_516 * x_517) + x_520);
  let x_527 : vec4<f32> = vs_TEXCOORD0;
  let x_529 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_527.z, x_527.w));
  let x_530 : vec3<f32> = vec3<f32>(x_529.x, x_529.y, x_529.w);
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : f32 = u_xlat2.z;
  let x_536 : f32 = u_xlat2.x;
  u_xlat2.x = (x_534 * x_536);
  let x_539 : vec4<f32> = u_xlat2;
  let x_544 : vec2<f32> = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_545 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
  let x_548 : vec4<f32> = u_xlat2;
  let x_550 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec2<f32>(x_548.x, x_548.y), vec2<f32>(x_550.x, x_550.y));
  let x_553 : f32 = u_xlat14;
  u_xlat14 = min(x_553, 1.0f);
  let x_555 : f32 = u_xlat14;
  u_xlat14 = (-(x_555) + 1.0f);
  let x_558 : f32 = u_xlat14;
  u_xlat2.z = sqrt(x_558);
  let x_561 : vec4<f32> = u_xlat2;
  let x_563 : f32 = u_xlat12;
  let x_568 : vec3<f32> = ((vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_563, x_563, x_563)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_569 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat1;
  let x_573 : vec4<f32> = u_xlat2;
  let x_577 : vec3<f32> = ((vec3<f32>(x_571.w, x_571.w, x_571.w) * vec3<f32>(x_573.x, x_573.y, x_573.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_580 : vec4<f32> = u_xlat0;
  let x_582 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + -(vec3<f32>(x_582.x, x_582.y, x_582.z)));
  let x_586 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
  let x_588 : vec4<f32> = u_xlat0;
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_593);
  let x_595 : f32 = u_xlat12;
  let x_597 : vec4<f32> = u_xlat0;
  let x_599 : vec3<f32> = (vec3<f32>(x_595, x_595, x_595) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_604 : vec3<f32> = vs_TEXCOORD2;
  let x_605 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_604, -(vec3<f32>(x_605.x, x_605.y, x_605.z)));
  let x_611 : vec3<f32> = vs_TEXCOORD3;
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_611, -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_618 : vec3<f32> = vs_TEXCOORD4;
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_618, -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_624 : vec4<f32> = u_xlat2;
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_631 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_631);
  let x_634 : vec4<f32> = u_xlat0;
  let x_636 : vec4<f32> = u_xlat2;
  let x_638 : vec3<f32> = (vec3<f32>(x_634.x, x_634.x, x_634.x) * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_642 : vec3<f32> = vs_TEXCOORD5;
  let x_646 : vec4<f32> = x_22.x_WorldSpaceLightPos0;
  let x_648 : vec3<f32> = (-(x_642) + vec3<f32>(x_646.x, x_646.y, x_646.z));
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_648.x, x_648.y, x_648.z, x_649.w);
  let x_651 : vec4<f32> = u_xlat2;
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_651.x, x_651.y, x_651.z), vec3<f32>(x_653.x, x_653.y, x_653.z));
  let x_656 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_656);
  let x_658 : f32 = u_xlat12;
  let x_660 : vec4<f32> = u_xlat2;
  let x_662 : vec3<f32> = (vec3<f32>(x_658, x_658, x_658) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec3<f32> = vs_TEXCOORD5;
  let x_670 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_671 : vec3<f32> = (-(x_665) + x_670);
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_671.z);
  let x_674 : vec4<f32> = u_xlat3;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat12 = dot(vec3<f32>(x_674.x, x_674.y, x_674.w), vec3<f32>(x_676.x, x_676.y, x_676.w));
  let x_679 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_679);
  let x_681 : vec4<f32> = u_xlat3;
  let x_683 : f32 = u_xlat12;
  let x_686 : vec4<f32> = u_xlat2;
  let x_688 : vec3<f32> = ((vec3<f32>(x_681.x, x_681.y, x_681.w) * vec3<f32>(x_683, x_683, x_683)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_688.z);
  let x_691 : vec4<f32> = u_xlat0;
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat0.w = dot(vec3<f32>(x_691.x, x_691.y, x_691.z), vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_697 : vec4<f32> = u_xlat3;
  let x_699 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.w), vec3<f32>(x_699.x, x_699.y, x_699.w));
  let x_704 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_704);
  let x_707 : vec4<f32> = u_xlat2;
  let x_709 : vec4<f32> = u_xlat3;
  let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.x, x_707.x) * vec3<f32>(x_709.x, x_709.y, x_709.w));
  let x_712 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat0;
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_720 : vec4<f32> = u_xlat0;
  let x_723 : vec2<f32> = max(vec2<f32>(x_720.x, x_720.w), vec2<f32>(0.0f, 0.0f));
  let x_724 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_723.x, x_724.y, x_724.z, x_723.y);
  let x_727 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_727);
  let x_733 : f32 = x_22.x_FaceShininess;
  let x_737 : f32 = x_22.x_OutlineShininess;
  u_xlat4 = (-(x_733) + x_737);
  let x_739 : f32 = u_xlat11;
  let x_740 : f32 = u_xlat4;
  let x_743 : f32 = x_22.x_FaceShininess;
  u_xlat4 = ((x_739 * x_740) + x_743);
  let x_745 : f32 = u_xlat4;
  u_xlat4 = (x_745 * 128.0f);
  let x_749 : f32 = u_xlat0.x;
  let x_750 : f32 = u_xlat4;
  u_xlat0.x = (x_749 * x_750);
  let x_754 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_754);
  let x_757 : vec3<f32> = vs_TEXCOORD5;
  let x_761 : vec4<f32> = x_22.unity_WorldToLight[1i];
  let x_763 : vec3<f32> = (vec3<f32>(x_757.y, x_757.y, x_757.y) * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_767 : vec4<f32> = x_22.unity_WorldToLight[0i];
  let x_769 : vec3<f32> = vs_TEXCOORD5;
  let x_772 : vec4<f32> = u_xlat2;
  let x_774 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769.x, x_769.x, x_769.x)) + vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : vec4<f32> = x_22.unity_WorldToLight[2i];
  let x_780 : vec3<f32> = vs_TEXCOORD5;
  let x_783 : vec4<f32> = u_xlat2;
  let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_780.z, x_780.z, x_780.z)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_792 : vec4<f32> = x_22.unity_WorldToLight[3i];
  let x_794 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat2;
  let x_799 : vec4<f32> = u_xlat2;
  u_xlat4 = dot(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_811 : vec4<f32> = u_xlat2;
  let x_813 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_811.x, x_811.y, x_811.z));
  u_xlat8 = x_813.w;
  let x_820 : f32 = u_xlat4;
  let x_822 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_820, x_820));
  u_xlat4 = x_822.x;
  let x_824 : f32 = u_xlat8;
  let x_825 : f32 = u_xlat4;
  u_xlat4 = (x_824 * x_825);
  let x_827 : f32 = u_xlat4;
  let x_830 : vec4<f32> = x_22.x_LightColor0;
  let x_832 : vec3<f32> = (vec3<f32>(x_827, x_827, x_827) * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat2;
  let x_839 : vec4<f32> = x_22.x_SpecColor;
  let x_841 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.x, x_844.x) * vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_852 : f32 = u_xlat1.w;
  u_xlat14 = max(x_852, 0.00009999999747378752f);
  let x_855 : vec4<f32> = u_xlat1;
  let x_857 : f32 = u_xlat14;
  let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) / vec3<f32>(x_857, x_857, x_857));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_865 : f32 = u_xlat1.w;
  SV_Target0.w = x_865;
  let x_868 : vec4<f32> = u_xlat2;
  let x_870 : vec4<f32> = u_xlat1;
  let x_872 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec4<f32> = u_xlat0;
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec3<f32> = ((vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_877.w, x_877.w, x_877.w)) + vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD6_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(7) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


