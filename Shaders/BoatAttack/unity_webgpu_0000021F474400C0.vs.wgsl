struct TerrainGrass {
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_MatrixVP : mat4x4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(6) var<uniform> x_23 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_226 : UnityPerDraw;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_342 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_372 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb2 : bool;
  var x_78 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_28 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_28.y, x_28.y, x_28.y, x_28.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_38 : vec4<f32> = x_23.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_38.y, x_38.y, x_38.y, x_38.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_47 : vec4<f32> = in_POSITION0;
  let x_51 : vec4<f32> = x_23.x_CameraPosition;
  let x_54 : vec3<f32> = (vec3<f32>(x_47.x, x_47.y, x_47.z) + -(vec3<f32>(x_51.x, x_51.y, x_51.z)));
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_57 : vec4<f32> = u_xlat2;
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_57.x, x_57.y, x_57.z), vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_72 : f32 = x_23.x_WaveAndDistance.w;
  let x_74 : f32 = u_xlat2.x;
  u_xlatb2 = (x_72 < x_74);
  let x_76 : bool = u_xlatb2;
  if (x_76) {
    x_78 = vec2<f32>(0.0f, 0.0f);
  } else {
    let x_84 : vec4<f32> = in_TANGENT0;
    x_78 = vec2<f32>(x_84.x, x_84.y);
  }
  let x_86 : vec2<f32> = x_78;
  let x_87 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_89 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = x_23.x_CameraRight;
  let x_96 : vec4<f32> = in_POSITION0;
  let x_98 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.x, x_89.x) * x_94) + vec3<f32>(x_96.x, x_96.y, x_96.z));
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_98.x, x_99.y, x_98.y, x_98.z);
  let x_105 : f32 = u_xlat2.y;
  let x_108 : f32 = u_xlat2.z;
  u_xlat3.y = (x_105 + x_108);
  let x_111 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_111 * vec4<f32>(x_112.w, x_112.w, x_112.w, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec4<f32>(x_115.x, x_115.x, x_115.x, x_115.x) * x_117) + x_119);
  let x_122 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_130 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_122.x, x_122.x, x_122.x, x_122.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_130);
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_132);
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_134 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_141 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_141 * x_142);
  let x_145 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_145 * x_146);
  let x_148 : vec4<f32> = u_xlat4;
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_148 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_152);
  let x_154 : vec4<f32> = u_xlat1;
  let x_155 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_154 * x_155);
  let x_157 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_157 * x_158);
  let x_160 : vec4<f32> = u_xlat4;
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_160 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_164);
  let x_166 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_166 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_170);
  let x_172 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_172 * x_173);
  let x_175 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_175 * x_176);
  let x_178 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = in_TANGENT0;
  u_xlat1 = (x_178 * vec4<f32>(x_179.y, x_179.y, x_179.y, x_179.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_182, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (x_190 * 0.699999988f);
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_194, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_201, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_207 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = x_23.x_WaveAndDistance;
  let x_214 : vec4<f32> = u_xlat2;
  let x_216 : vec2<f32> = ((-(vec2<f32>(x_207.x, x_207.z)) * vec2<f32>(x_211.z, x_211.z)) + vec2<f32>(x_214.x, x_214.w));
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_216.x, x_217.y, x_216.y);
  let x_220 : vec3<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_226.unity_ObjectToWorld[1i];
  u_xlat5 = (vec3<f32>(x_220.y, x_220.y, x_220.y) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec3<f32> = u_xlat3;
  let x_234 : vec4<f32> = x_23.x_CameraPosition;
  let x_237 : vec3<f32> = (x_232 + -(vec3<f32>(x_234.x, x_234.y, x_234.z)));
  let x_238 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_240.x, x_240.y, x_240.z), vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_247 : f32 = u_xlat1.x;
  let x_250 : f32 = x_23.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_247) + x_250);
  let x_254 : f32 = u_xlat1.x;
  let x_256 : f32 = u_xlat1.x;
  u_xlat1.x = (x_254 + x_256);
  let x_262 : f32 = u_xlat1.x;
  let x_264 : f32 = x_23.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_262 * x_264);
  let x_269 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_269, 0.0f, 1.0f);
  let x_274 : vec4<f32> = x_226.unity_ObjectToWorld[0i];
  let x_276 : vec3<f32> = u_xlat3;
  let x_279 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.x, x_276.x, x_276.x)) + x_279);
  let x_282 : vec4<f32> = x_226.unity_ObjectToWorld[2i];
  let x_284 : vec3<f32> = u_xlat3;
  let x_287 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.z, x_284.z, x_284.z)) + x_287);
  let x_289 : vec3<f32> = u_xlat5;
  let x_291 : vec4<f32> = x_226.unity_ObjectToWorld[3i];
  u_xlat5 = (x_289 + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec3<f32> = u_xlat5;
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_302 : vec3<f32> = in_NORMAL0;
  let x_304 : vec4<f32> = x_226.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_302, vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_308 : vec3<f32> = in_NORMAL0;
  let x_310 : vec4<f32> = x_226.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_308, vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_314 : vec3<f32> = in_NORMAL0;
  let x_316 : vec4<f32> = x_226.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_314, vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_321 : vec4<f32> = u_xlat1;
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : f32 = u_xlat16;
  u_xlat16 = max(x_326, 1.17549435e-37f);
  let x_329 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_329);
  let x_333 : f32 = u_xlat16;
  let x_335 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec3<f32> = u_xlat5;
  let x_344 : vec3<f32> = x_342.x_WorldSpaceCameraPos;
  let x_345 : vec3<f32> = (-(x_338) + x_344);
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : f32 = u_xlat16;
  u_xlat16 = max(x_353, 1.17549435e-37f);
  let x_355 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_355);
  let x_358 : f32 = u_xlat16;
  let x_360 : vec4<f32> = u_xlat1;
  vs_TEXCOORD4 = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_366 : vec3<f32> = u_xlat5;
  let x_374 : vec4<f32> = x_372.x_MainLightWorldToShadow[0i][1i];
  let x_376 : vec3<f32> = (vec3<f32>(x_366.y, x_366.y, x_366.y) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : vec4<f32> = x_372.x_MainLightWorldToShadow[0i][0i];
  let x_382 : vec3<f32> = u_xlat5;
  let x_385 : vec4<f32> = u_xlat1;
  let x_387 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.y, x_380.z) * vec3<f32>(x_382.x, x_382.x, x_382.x)) + vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : vec4<f32> = x_372.x_MainLightWorldToShadow[0i][2i];
  let x_393 : vec3<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat1;
  let x_398 : vec3<f32> = ((vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393.z, x_393.z, x_393.z)) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : vec4<f32> = u_xlat1;
  let x_405 : vec4<f32> = x_372.x_MainLightWorldToShadow[0i][3i];
  let x_407 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  vs_TEXCOORD6.w = 0.0f;
  let x_412 : vec4<f32> = x_23.x_WavingTint;
  let x_416 : vec3<f32> = (vec3<f32>(x_412.x, x_412.y, x_412.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_417 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat1;
  let x_426 : vec3<f32> = ((vec3<f32>(x_419.x, x_419.x, x_419.x) * vec3<f32>(x_421.x, x_421.y, x_421.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat1;
  let x_432 : vec4<f32> = in_COLOR0;
  let x_434 : vec3<f32> = (vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat1;
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) + vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = u_xlat5;
  let x_447 : vec4<f32> = x_342.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_444.y, x_444.y, x_444.y, x_444.y) * x_447);
  let x_450 : vec4<f32> = x_342.unity_MatrixVP[0i];
  let x_451 : vec3<f32> = u_xlat5;
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_450 * vec4<f32>(x_451.x, x_451.x, x_451.x, x_451.x)) + x_454);
  let x_457 : vec4<f32> = x_342.unity_MatrixVP[2i];
  let x_458 : vec3<f32> = u_xlat5;
  let x_461 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_457 * vec4<f32>(x_458.z, x_458.z, x_458.z, x_458.z)) + x_461);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec4<f32> = x_342.unity_MatrixVP[3i];
  gl_Position = (x_467 + x_469);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD6_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD7, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6, gl_Position);
}

