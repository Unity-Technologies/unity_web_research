struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_1 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_2 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_Bevel : f32,
  x_BevelOffset : f32,
  x_BevelWidth : f32,
  x_BevelClamp : f32,
  x_BevelRoundness : f32,
  x_BumpOutline : f32,
  x_BumpFace : f32,
  x_ReflectFaceColor : vec4<f32>,
  x_ReflectOutlineColor : vec4<f32>,
  x_ShaderFlags : f32,
  x_ScaleRatioA : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_FaceShininess : f32,
  x_OutlineShininess : f32,
}

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_FaceTex : sampler;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

@group(0) @binding(4) var x_Cube : texture_cube<f32>;

@group(0) @binding(8) var sampler_Cube : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb9 : bool;
  var x_222 : f32;
  var u_xlatb3 : bool;
  var u_xlat19 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  u_xlat18 = max(x_162, 0.01f);
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
    let x_226 : f32 = u_xlat3.x;
    x_222 = x_226;
  } else {
    let x_229 : f32 = u_xlat3.x;
    x_222 = -(x_229);
  }
  let x_231 : f32 = x_222;
  u_xlat3.x = x_231;
  let x_235 : f32 = u_xlat3.x;
  u_xlatb3 = (x_235 >= 0.5f);
  let x_237 : bool = u_xlatb3;
  let x_238 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = select(x_239, x_238, vec4<bool>(x_237, x_237, x_237, x_237));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_243 * vec4<f32>(1.570796013f, 1.570796013f, 1.570796013f, 1.570796013f));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = sin(x_247);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_249) + x_251);
  let x_255 : f32 = x_36.x_BevelRoundness;
  let x_257 : f32 = x_36.x_BevelRoundness;
  let x_259 : f32 = x_36.x_BevelRoundness;
  let x_261 : f32 = x_36.x_BevelRoundness;
  let x_262 : vec4<f32> = vec4<f32>(x_255, x_257, x_259, x_261);
  let x_268 : vec4<f32> = u_xlat2;
  let x_270 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_262.x, x_262.y, x_262.z, x_262.w) * x_268) + x_270);
  let x_274 : f32 = x_36.x_BevelClamp;
  u_xlat2.x = (-(x_274) + 1.0f);
  let x_278 : vec4<f32> = u_xlat1;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_278, vec4<f32>(x_279.x, x_279.x, x_279.x, x_279.x));
  let x_282 : f32 = u_xlat18;
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : vec2<f32> = (vec2<f32>(x_282, x_282) * vec2<f32>(x_284.x, x_284.z));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_287.y, x_286.y, x_287.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : f32 = u_xlat18;
  let x_294 : vec4<f32> = u_xlat1;
  let x_297 : vec2<f32> = ((vec2<f32>(x_289.w, x_289.y) * vec2<f32>(x_291, x_291)) + -(vec2<f32>(x_294.z, x_294.x)));
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_297.x, x_297.y, x_298.w);
  u_xlat1.x = -1.0f;
  u_xlat1.w = 1.0f;
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec2<f32>(x_302.x, x_302.y), vec2<f32>(x_304.x, x_304.y));
  let x_307 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_307);
  let x_310 : vec4<f32> = u_xlat1;
  let x_312 : vec4<f32> = u_xlat1;
  u_xlat19 = dot(vec2<f32>(x_310.z, x_310.w), vec2<f32>(x_312.z, x_312.w));
  let x_315 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_315);
  let x_317 : f32 = u_xlat19;
  let x_319 : f32 = u_xlat1.z;
  u_xlat2.x = (x_317 * x_319);
  let x_322 : f32 = u_xlat19;
  let x_325 : vec2<f32> = (vec2<f32>(x_322, x_322) * vec2<f32>(1.0f, 0.0f));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_326.x, x_325.x, x_325.y, x_326.w);
  u_xlat1.z = 0.0f;
  let x_329 : f32 = u_xlat18;
  let x_331 : vec4<f32> = u_xlat1;
  let x_333 : vec3<f32> = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat2;
  let x_345 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat3;
  let x_351 : vec3<f32> = ((vec3<f32>(x_343.z, x_343.x, x_343.y) * vec3<f32>(x_345.y, x_345.z, x_345.x)) + -(vec3<f32>(x_348.x, x_348.y, x_348.z)));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_356 : f32 = x_36.x_OutlineUVSpeedX;
  let x_359 : f32 = x_36.x_OutlineUVSpeedY;
  let x_363 : vec4<f32> = x_36.x_Time;
  let x_367 : vec2<f32> = vs_TEXCOORD1;
  let x_368 : vec2<f32> = ((vec2<f32>(x_356, x_359) * vec2<f32>(x_363.y, x_363.y)) + x_367);
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
  let x_376 : vec4<f32> = u_xlat2;
  let x_378 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_376.x, x_376.y));
  u_xlat2 = x_378;
  let x_379 : vec4<f32> = u_xlat2;
  let x_383 : vec4<f32> = x_36.x_OutlineColor;
  let x_385 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_390 : f32 = vs_COLOR0.w;
  let x_392 : f32 = x_36.x_OutlineColor.w;
  u_xlat18 = (x_390 * x_392);
  let x_395 : f32 = u_xlat2.w;
  let x_396 : f32 = u_xlat18;
  u_xlat3.w = (x_395 * x_396);
  let x_399 : vec4<f32> = u_xlat2;
  let x_401 : vec4<f32> = u_xlat3;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.w, x_401.w, x_401.w));
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_408 : f32 = x_36.x_FaceUVSpeedX;
  let x_411 : f32 = x_36.x_FaceUVSpeedY;
  let x_414 : vec4<f32> = x_36.x_Time;
  let x_417 : vec4<f32> = vs_TEXCOORD0;
  let x_419 : vec2<f32> = ((vec2<f32>(x_408, x_411) * vec2<f32>(x_414.y, x_414.y)) + vec2<f32>(x_417.z, x_417.w));
  let x_420 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_427 : vec4<f32> = u_xlat2;
  let x_429 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_427.x, x_427.y));
  u_xlat2 = x_429;
  let x_431 : vec4<f32> = vs_COLOR0;
  let x_434 : vec4<f32> = x_36.x_FaceColor;
  u_xlat4 = (x_431 * x_434);
  let x_436 : vec4<f32> = u_xlat2;
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat2 = (x_436 * x_437);
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec4<f32> = u_xlat2;
  let x_443 : vec3<f32> = (vec3<f32>(x_439.w, x_439.w, x_439.w) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = (-(x_446) + x_448);
  let x_451 : f32 = x_36.x_OutlineWidth;
  let x_454 : f32 = x_36.x_ScaleRatioA;
  u_xlat18 = (x_451 * x_454);
  let x_456 : f32 = u_xlat18;
  let x_458 : f32 = vs_TEXCOORD5.y;
  u_xlat18 = (x_456 * x_458);
  let x_460 : f32 = u_xlat18;
  u_xlat19 = min(x_460, 1.0f);
  let x_462 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_462);
  let x_467 : vec4<f32> = vs_TEXCOORD0;
  let x_469 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_467.x, x_467.y));
  u_xlat4.x = x_469.w;
  let x_473 : f32 = u_xlat4.x;
  u_xlat4.x = (-(x_473) + 0.5f);
  let x_478 : f32 = u_xlat4.x;
  let x_480 : f32 = vs_TEXCOORD5.x;
  u_xlat4.x = (x_478 + -(x_480));
  let x_485 : f32 = u_xlat4.x;
  let x_487 : f32 = vs_TEXCOORD5.y;
  u_xlat4.x = ((x_485 * x_487) + 0.5f);
  let x_492 : f32 = u_xlat18;
  let x_495 : f32 = u_xlat4.x;
  u_xlat10 = ((x_492 * 0.5f) + x_495);
  let x_497 : f32 = u_xlat10;
  u_xlat10 = clamp(x_497, 0.0f, 1.0f);
  let x_499 : f32 = u_xlat18;
  let x_503 : f32 = u_xlat4.x;
  u_xlat18 = ((-(x_499) * 0.5f) + x_503);
  let x_505 : f32 = u_xlat19;
  let x_506 : f32 = u_xlat10;
  u_xlat19 = (x_505 * x_506);
  let x_508 : f32 = u_xlat19;
  let x_510 : vec4<f32> = u_xlat3;
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = ((vec4<f32>(x_508, x_508, x_508, x_508) * x_510) + x_512);
  let x_516 : f32 = x_36.x_OutlineSoftness;
  let x_518 : f32 = x_36.x_ScaleRatioA;
  u_xlat19 = (x_516 * x_518);
  let x_520 : f32 = u_xlat19;
  let x_522 : f32 = vs_TEXCOORD5.y;
  u_xlat3.x = (x_520 * x_522);
  let x_525 : f32 = u_xlat19;
  let x_527 : f32 = vs_TEXCOORD5.y;
  u_xlat19 = ((x_525 * x_527) + 1.0f);
  let x_531 : f32 = u_xlat3.x;
  let x_533 : f32 = u_xlat18;
  u_xlat18 = ((x_531 * 0.5f) + x_533);
  let x_535 : f32 = u_xlat18;
  let x_536 : f32 = u_xlat19;
  u_xlat18 = (x_535 / x_536);
  let x_538 : f32 = u_xlat18;
  u_xlat18 = clamp(x_538, 0.0f, 1.0f);
  let x_540 : f32 = u_xlat18;
  u_xlat18 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat18;
  let x_545 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_543, x_543, x_543, x_543) * x_545);
  let x_549 : f32 = x_36.x_BumpFace;
  let x_553 : f32 = x_36.x_BumpOutline;
  u_xlat18 = (-(x_549) + x_553);
  let x_555 : f32 = u_xlat10;
  let x_556 : f32 = u_xlat18;
  let x_559 : f32 = x_36.x_BumpFace;
  u_xlat18 = ((x_555 * x_556) + x_559);
  let x_566 : vec4<f32> = vs_TEXCOORD0;
  let x_568 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_566.z, x_566.w));
  let x_569 : vec3<f32> = vec3<f32>(x_568.x, x_568.y, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_573 : f32 = u_xlat3.z;
  let x_575 : f32 = u_xlat3.x;
  u_xlat3.x = (x_573 * x_575);
  let x_578 : vec4<f32> = u_xlat3;
  let x_583 : vec2<f32> = ((vec2<f32>(x_578.x, x_578.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_584 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat3;
  let x_588 : vec4<f32> = u_xlat3;
  u_xlat19 = dot(vec2<f32>(x_586.x, x_586.y), vec2<f32>(x_588.x, x_588.y));
  let x_591 : f32 = u_xlat19;
  u_xlat19 = min(x_591, 1.0f);
  let x_593 : f32 = u_xlat19;
  u_xlat19 = (-(x_593) + 1.0f);
  let x_596 : f32 = u_xlat19;
  u_xlat3.z = sqrt(x_596);
  let x_599 : vec4<f32> = u_xlat3;
  let x_601 : f32 = u_xlat18;
  let x_606 : vec3<f32> = ((vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601, x_601, x_601)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_606.x, x_606.y, x_606.z, x_607.w);
  let x_609 : vec4<f32> = u_xlat2;
  let x_611 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = ((vec3<f32>(x_609.w, x_609.w, x_609.w) * vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec4<f32> = u_xlat1;
  let x_620 : vec4<f32> = u_xlat3;
  let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) + -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec4<f32> = u_xlat1;
  let x_628 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_626.x, x_626.y, x_626.z), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_631 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_631);
  let x_633 : f32 = u_xlat18;
  let x_635 : vec4<f32> = u_xlat1;
  let x_637 : vec3<f32> = (vec3<f32>(x_633, x_633, x_633) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = vs_TEXCOORD2;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), -(vec3<f32>(x_642.x, x_642.y, x_642.z)));
  let x_647 : vec4<f32> = vs_TEXCOORD3;
  let x_649 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), -(vec3<f32>(x_649.x, x_649.y, x_649.z)));
  let x_654 : vec4<f32> = vs_TEXCOORD4;
  let x_656 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(vec3<f32>(x_654.x, x_654.y, x_654.z), -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_661 : vec4<f32> = u_xlat3;
  let x_663 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_666);
  let x_668 : f32 = u_xlat18;
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec3<f32> = (vec3<f32>(x_668, x_668, x_668) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
  let x_681 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_681, 0.0f);
  let x_685 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_685);
  let x_691 : f32 = x_36.x_FaceShininess;
  let x_695 : f32 = x_36.x_OutlineShininess;
  u_xlat6.x = (-(x_691) + x_695);
  let x_698 : f32 = u_xlat10;
  let x_700 : f32 = u_xlat6.x;
  let x_703 : f32 = x_36.x_FaceShininess;
  u_xlat6.x = ((x_698 * x_700) + x_703);
  let x_707 : f32 = u_xlat6.x;
  u_xlat6.x = (x_707 * 128.0f);
  let x_712 : f32 = u_xlat0.x;
  let x_714 : f32 = u_xlat6.x;
  u_xlat0.x = (x_712 * x_714);
  let x_718 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_718);
  let x_723 : vec4<f32> = x_36.x_LightColor0;
  let x_727 : vec4<f32> = x_36.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_730 : vec3<f32> = u_xlat0;
  let x_732 : vec3<f32> = u_xlat6;
  u_xlat0 = (vec3<f32>(x_730.x, x_730.x, x_730.x) * x_732);
  let x_734 : vec4<f32> = u_xlat3;
  let x_737 : vec4<f32> = x_36.x_WorldSpaceLightPos0;
  u_xlat18 = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : f32 = u_xlat18;
  u_xlat18 = max(x_740, 0.0f);
  let x_743 : f32 = u_xlat2.w;
  u_xlat19 = max(x_743, 0.0001f);
  let x_746 : vec4<f32> = u_xlat2;
  let x_748 : f32 = u_xlat19;
  let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) / vec3<f32>(x_748, x_748, x_748));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat2;
  let x_756 : vec4<f32> = x_36.x_LightColor0;
  let x_758 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_758.x, x_759.y, x_758.y, x_758.z);
  let x_761 : vec4<f32> = u_xlat4;
  let x_763 : f32 = u_xlat18;
  let x_766 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_761.x, x_761.z, x_761.w) * vec3<f32>(x_763, x_763, x_763)) + x_766);
  u_xlat3.w = 1.0f;
  let x_772 : vec4<f32> = x_36.unity_SHAr;
  let x_773 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_772, x_773);
  let x_778 : vec4<f32> = x_36.unity_SHAg;
  let x_779 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_778, x_779);
  let x_784 : vec4<f32> = x_36.unity_SHAb;
  let x_785 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_784, x_785);
  let x_788 : vec3<f32> = u_xlat5;
  let x_791 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec3<f32> = (x_788 + x_791);
  let x_793 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat3;
  let x_798 : vec3<f32> = max(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat2;
  let x_803 : vec4<f32> = u_xlat3;
  let x_806 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_803.x, x_803.y, x_803.z)) + x_806);
  let x_810 : vec4<f32> = x_36.x_ReflectFaceColor;
  let x_815 : vec4<f32> = x_36.x_ReflectOutlineColor;
  let x_817 : vec3<f32> = (-(vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : f32 = u_xlat10;
  let x_822 : vec4<f32> = u_xlat2;
  let x_826 : vec4<f32> = x_36.x_ReflectFaceColor;
  let x_828 : vec3<f32> = ((vec3<f32>(x_820, x_820, x_820) * vec3<f32>(x_822.x, x_822.y, x_822.z)) + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat1;
  let x_835 : vec4<f32> = x_36.unity_ObjectToWorld[1i];
  let x_837 : vec3<f32> = (vec3<f32>(x_831.y, x_831.y, x_831.y) * vec3<f32>(x_835.x, x_835.y, x_835.z));
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_841 : vec4<f32> = x_36.unity_ObjectToWorld[0i];
  let x_843 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = u_xlat3;
  let x_848 : vec3<f32> = ((vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843.x, x_843.x, x_843.x)) + vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_848.z);
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
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec4<f32> = u_xlat2;
  let x_907 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(x_904.w, x_904.w, x_904.w)) + x_907);
  let x_912 : f32 = u_xlat2.w;
  SV_Target0.w = x_912;
  let x_915 : vec3<f32> = u_xlat0;
  let x_918 : vec4<f32> = x_36.unity_FogColor;
  u_xlat0 = (x_915 + -(vec3<f32>(x_918.x, x_918.y, x_918.z)));
  let x_923 : f32 = vs_TEXCOORD8;
  let x_925 : f32 = x_36.x_ProjectionParams.y;
  u_xlat18 = (x_923 / x_925);
  let x_927 : f32 = u_xlat18;
  u_xlat18 = (-(x_927) + 1.0f);
  let x_930 : f32 = u_xlat18;
  let x_932 : f32 = x_36.x_ProjectionParams.z;
  u_xlat18 = (x_930 * x_932);
  let x_934 : f32 = u_xlat18;
  u_xlat18 = max(x_934, 0.0f);
  let x_936 : f32 = u_xlat18;
  let x_939 : f32 = x_36.unity_FogParams.x;
  u_xlat18 = (x_936 * x_939);
  let x_941 : f32 = u_xlat18;
  let x_942 : f32 = u_xlat18;
  u_xlat18 = (x_941 * -(x_942));
  let x_945 : f32 = u_xlat18;
  u_xlat18 = exp2(x_945);
  let x_947 : f32 = u_xlat18;
  let x_949 : vec3<f32> = u_xlat0;
  let x_952 : vec4<f32> = x_36.unity_FogColor;
  let x_954 : vec3<f32> = ((vec3<f32>(x_947, x_947, x_947) * x_949) + vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD5_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(6) vs_COLOR0_param : vec4<f32>, @location(9) vs_TEXCOORD7_param : vec3<f32>, @location(7) vs_TEXCOORD6_param : vec3<f32>, @location(8) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

