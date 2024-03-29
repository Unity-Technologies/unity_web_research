diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  /* @offset(48) */
  Vector1_6E11FCEA : f32,
  /* @offset(52) */
  Vector1_A492C01C : f32,
  /* @offset(56) */
  Vector1_8B35DE98 : f32,
  /* @offset(64) */
  Texture2D_C005B064_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_D7D66558_TexelSize : vec4<f32>,
  /* @offset(96) */
  Vector1_90E376AD : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_13 : UnityPerMaterial;

var<private> vs_INTERP2 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb5 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_84 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_DE8BF47E : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_165 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat16 : f32;

@group(0) @binding(0) var x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : texture_2d<f32>;

@group(0) @binding(3) var sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D : sampler;

var<private> u_xlat11 : f32;

@group(0) @binding(2) var Texture2D_C005B064 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_C005B064 : sampler;

var<private> u_xlat15 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.Vector1_A492C01C;
  u_xlat0.x = (x_18 + -10.0f);
  let x_26 : f32 = u_xlat0.x;
  let x_33 : f32 = vs_INTERP2.y;
  u_xlat0.x = (-(x_26) + x_33);
  let x_37 : f32 = u_xlat0.x;
  u_xlat0.x = (x_37 * 0.05000000074505805969f);
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_42, 0.0f, 1.0f);
  let x_49 : f32 = u_xlat0.x;
  u_xlat5.x = ((x_49 * -2.0f) + 3.0f);
  let x_56 : f32 = u_xlat0.x;
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = (x_56 * x_58);
  let x_62 : f32 = u_xlat0.x;
  let x_64 : f32 = u_xlat5.x;
  u_xlat0.x = (x_62 * x_64);
  let x_75 : f32 = vs_INTERP0.w;
  u_xlatb5.x = (0.0f < x_75);
  let x_87 : f32 = x_84.unity_WorldTransformParams.w;
  u_xlatb5.y = (x_87 >= 0.0f);
  let x_91 : bool = u_xlatb5.x;
  u_xlat5.x = select(-1.0f, 1.0f, x_91);
  let x_96 : bool = u_xlatb5.y;
  u_xlat5.y = select(-1.0f, 1.0f, x_96);
  let x_100 : f32 = u_xlat5.y;
  let x_102 : f32 = u_xlat5.x;
  u_xlat5.x = (x_100 * x_102);
  let x_107 : vec4<f32> = vs_INTERP0;
  let x_110 : vec3<f32> = vs_INTERP3;
  let x_112 : vec3<f32> = (vec3<f32>(x_107.y, x_107.z, x_107.x) * vec3<f32>(x_110.z, x_110.x, x_110.y));
  let x_113 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_115 : vec3<f32> = vs_INTERP3;
  let x_117 : vec4<f32> = vs_INTERP0;
  let x_120 : vec4<f32> = u_xlat1;
  let x_123 : vec3<f32> = ((vec3<f32>(x_115.y, x_115.z, x_115.x) * vec3<f32>(x_117.z, x_117.x, x_117.y)) + -(vec3<f32>(x_120.x, x_120.y, x_120.z)));
  let x_124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_123.x, x_123.y, x_123.z, x_124.w);
  let x_126 : vec3<f32> = u_xlat5;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec3<f32>(x_126.x, x_126.x, x_126.x) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec3<f32> = vs_INTERP3;
  let x_132 : vec3<f32> = vs_INTERP3;
  u_xlat1.x = dot(x_131, x_132);
  let x_136 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_140);
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_144 * vec3<f32>(x_145.x, x_145.x, x_145.x));
  let x_161 : vec4<f32> = vs_INTERP1;
  let x_168 : f32 = x_165.x_GlobalMipBias.x;
  let x_169 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_161.x, x_161.y), x_168);
  u_xlat2 = vec3<f32>(x_169.y, x_169.z, x_169.w);
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_171.z, x_171.x, x_171.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_178 : vec3<f32> = u_xlat6;
  let x_179 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_178 * vec3<f32>(x_179.y, x_179.y, x_179.y));
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = vs_INTERP0;
  u_xlat3 = (vec3<f32>(x_183.x, x_183.x, x_183.x) * vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = vs_INTERP3;
  u_xlat4 = (vec3<f32>(x_189.x, x_189.x, x_189.x) * x_191);
  let x_193 : vec3<f32> = u_xlat2;
  let x_195 : vec3<f32> = u_xlat3;
  let x_197 : vec3<f32> = u_xlat6;
  let x_198 : vec3<f32> = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * x_195) + x_197);
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec3<f32> = u_xlat2;
  let x_203 : vec3<f32> = u_xlat4;
  let x_205 : vec4<f32> = u_xlat1;
  let x_207 : vec3<f32> = ((vec3<f32>(x_201.z, x_201.z, x_201.z) * x_203) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_217 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_217, 1.17549435e-38f);
  let x_222 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_222);
  let x_226 : f32 = u_xlat1.x;
  let x_228 : f32 = u_xlat1.y;
  u_xlat1.x = (x_226 * x_228);
  let x_233 : f32 = x_13.Vector1_8B35DE98;
  u_xlat6.x = ((-(x_233) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_241 : f32 = u_xlat0.x;
  let x_243 : f32 = u_xlat1.x;
  let x_246 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_241 * x_243) + -(x_246));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = (x_251 * 10.0f);
  let x_256 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_256, 0.0f, 1.0f);
  let x_260 : f32 = u_xlat0.x;
  u_xlat1.x = ((x_260 * -2.0f) + 3.0f);
  let x_265 : f32 = u_xlat0.x;
  let x_267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_265 * x_267);
  let x_271 : f32 = u_xlat0.x;
  let x_273 : f32 = u_xlat1.x;
  u_xlat0.x = (x_271 * x_273);
  let x_277 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_277, 1.0f);
  let x_281 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_281) + 1.0f);
  let x_287 : vec4<f32> = x_84.unity_ObjectToWorld[0i];
  let x_290 : vec4<f32> = x_84.unity_ObjectToWorld[0i];
  u_xlat1.x = dot(vec3<f32>(x_287.x, x_287.y, x_287.z), vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_296 : vec4<f32> = x_84.unity_ObjectToWorld[1i];
  let x_299 : vec4<f32> = x_84.unity_ObjectToWorld[1i];
  u_xlat1.w = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_303 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = sqrt(vec2<f32>(x_303.x, x_303.w));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_311 : vec4<f32> = x_84.unity_ObjectToWorld[2i];
  let x_314 : vec4<f32> = x_84.unity_ObjectToWorld[2i];
  u_xlat16 = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : f32 = u_xlat16;
  u_xlat1.z = sqrt(x_317);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_327);
  let x_331 : f32 = u_xlat1.x;
  let x_334 : f32 = x_13.Vector1_90E376AD;
  u_xlat1.x = (x_331 * x_334);
  let x_338 : f32 = u_xlat1.x;
  u_xlat1.x = (x_338 * 30.0f);
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec4<f32> = vs_INTERP1;
  let x_346 : vec2<f32> = (vec2<f32>(x_342.x, x_342.x) * vec2<f32>(x_344.x, x_344.y));
  let x_347 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_357 : f32 = x_165.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, vec2<f32>(x_354.x, x_354.y), x_357);
  let x_359 : vec3<f32> = vec3<f32>(x_358.x, x_358.y, x_358.w);
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : f32 = u_xlat1.x;
  let x_365 : f32 = u_xlat1.z;
  u_xlat1.x = (x_363 * x_365);
  let x_368 : vec4<f32> = u_xlat1;
  let x_373 : vec2<f32> = ((vec2<f32>(x_368.x, x_368.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_374 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat11 = dot(vec2<f32>(x_377.x, x_377.y), vec2<f32>(x_379.x, x_379.y));
  let x_382 : vec4<f32> = u_xlat1;
  let x_384 : vec3<f32> = u_xlat2;
  let x_386 : vec2<f32> = (vec2<f32>(x_382.x, x_382.y) + vec2<f32>(x_384.x, x_384.y));
  let x_387 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_386.x, x_386.y, x_387.z);
  let x_389 : f32 = u_xlat11;
  u_xlat1.x = min(x_389, 1.0f);
  let x_393 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_393) + 1.0f);
  let x_398 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_398);
  let x_402 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_402, 0.0000000000000001f);
  let x_407 : f32 = u_xlat1.x;
  let x_409 : f32 = u_xlat2.z;
  u_xlat3.z = (x_407 * x_409);
  let x_412 : vec3<f32> = u_xlat3;
  let x_413 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_412, x_413);
  let x_417 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_417, 0.00006103515625f);
  let x_422 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_422);
  let x_425 : vec4<f32> = vs_INTERP1;
  let x_429 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) * vec2<f32>(4.0f, 4.0f));
  let x_430 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_429.x, x_429.y, x_430.z);
  let x_437 : vec3<f32> = u_xlat6;
  let x_440 : f32 = x_165.x_GlobalMipBias.x;
  let x_441 : vec4<f32> = textureSampleBias(Texture2D_C005B064, samplerTexture2D_C005B064, vec2<f32>(x_437.x, x_437.y), x_440);
  u_xlat6 = vec3<f32>(x_441.x, x_441.y, x_441.w);
  let x_444 : f32 = u_xlat6.x;
  let x_446 : f32 = u_xlat6.z;
  u_xlat6.x = (x_444 * x_446);
  let x_449 : vec3<f32> = u_xlat6;
  let x_452 : vec2<f32> = ((vec2<f32>(x_449.x, x_449.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_453 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_452.x, x_452.y, x_453.z);
  let x_455 : vec3<f32> = u_xlat2;
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(vec2<f32>(x_455.x, x_455.y), vec2<f32>(x_457.x, x_457.y));
  let x_462 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_462, 1.0f);
  let x_466 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_466) + 1.0f);
  let x_471 : f32 = u_xlat6.x;
  u_xlat6.x = sqrt(x_471);
  let x_475 : f32 = u_xlat6.x;
  u_xlat2.z = max(x_475, 0.0000000000000001f);
  let x_478 : vec3<f32> = u_xlat3;
  let x_479 : vec4<f32> = u_xlat1;
  let x_482 : vec3<f32> = u_xlat2;
  let x_484 : vec3<f32> = ((x_478 * vec3<f32>(x_479.x, x_479.x, x_479.x)) + -(x_482));
  let x_485 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  let x_487 : vec3<f32> = u_xlat0;
  let x_489 : vec4<f32> = u_xlat1;
  let x_492 : vec3<f32> = u_xlat2;
  let x_493 : vec3<f32> = ((vec3<f32>(x_487.x, x_487.x, x_487.x) * vec3<f32>(x_489.x, x_489.y, x_489.z)) + x_492);
  let x_494 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec3<f32> = u_xlat5;
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_496 * vec3<f32>(x_497.y, x_497.y, x_497.y));
  let x_500 : vec4<f32> = u_xlat1;
  let x_502 : vec4<f32> = vs_INTERP0;
  let x_505 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_500.x, x_500.x, x_500.x) * vec3<f32>(x_502.x, x_502.y, x_502.z)) + x_505);
  let x_507 : vec4<f32> = u_xlat1;
  let x_509 : vec3<f32> = vs_INTERP3;
  let x_511 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_507.z, x_507.z, x_507.z) * x_509) + x_511);
  let x_514 : vec3<f32> = u_xlat0;
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat15 = dot(x_514, x_515);
  let x_517 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_517);
  let x_521 : f32 = u_xlat15;
  let x_523 : vec3<f32> = u_xlat0;
  let x_524 : vec3<f32> = (vec3<f32>(x_521, x_521, x_521) * x_523);
  let x_525 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP2_param : vec3<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


