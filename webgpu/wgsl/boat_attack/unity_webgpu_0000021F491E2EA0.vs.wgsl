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

struct TerrainGrass {
  x_WavingTint : vec4<f32>,
  x_WaveAndDistance : vec4<f32>,
  x_CameraPosition : vec4<f32>,
  x_CameraRight : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraUp : vec3<f32>,
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

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(6) var<uniform> x_40 : TerrainGrass;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_264 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_297 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD1;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  vs_TEXCOORD1 = ((x_12 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_34 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_34;
  let x_43 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat0 = (vec4<f32>(x_43.y, x_43.y, x_43.y, x_43.y) * vec4<f32>(0.006f, 0.02f, 0.02f, 0.050000001f));
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = in_POSITION0;
  u_xlat0 = (x_50 * vec4<f32>(x_53.z, x_53.z, x_53.z, x_53.z));
  let x_58 : vec4<f32> = x_40.x_WaveAndDistance;
  u_xlat1 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * vec4<f32>(0.012f, 0.02f, 0.059999999f, 0.024f));
  let x_65 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x) * x_67) + x_69);
  let x_72 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_80 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x) * vec4<f32>(1.200000048f, 2.0f, 1.600000024f, 4.800000191f)) + x_80);
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_82);
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_84 * vec4<f32>(6.408848763f, 6.408848763f, 6.408848763f, 6.408848763f)) + vec4<f32>(-3.141592741f, -3.141592741f, -3.141592741f, -3.141592741f));
  let x_91 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat1 = (x_91 * x_92);
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat2 = (x_95 * x_96);
  let x_98 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_98 * vec4<f32>(-0.161616161f, -0.161616161f, -0.161616161f, -0.161616161f)) + x_102);
  let x_104 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_104 * x_105);
  let x_107 : vec4<f32> = u_xlat1;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_107 * x_108);
  let x_110 : vec4<f32> = u_xlat2;
  let x_114 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_110 * vec4<f32>(0.0083333f, 0.0083333f, 0.0083333f, 0.0083333f)) + x_114);
  let x_116 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_116 * vec4<f32>(-0.00019841f, -0.00019841f, -0.00019841f, -0.00019841f)) + x_120);
  let x_122 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_122 * x_123);
  let x_125 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_125 * x_126);
  let x_132 : f32 = in_COLOR0.w;
  let x_135 : f32 = x_40.x_WaveAndDistance.z;
  u_xlat1.x = (x_132 * x_135);
  let x_140 : vec4<f32> = u_xlat0;
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = (x_140 * vec4<f32>(x_141.x, x_141.x, x_141.x, x_141.x));
  let x_144 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_144, vec4<f32>(0.674199879f, 0.674199879f, 0.269679934f, 0.134839967f));
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = (x_152 * 0.699999988f);
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_156, vec4<f32>(0.024f, 0.039999999f, -0.119999997f, 0.096000001f));
  let x_163 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_163, vec4<f32>(0.006f, 0.02f, -0.02f, 0.100000001f));
  let x_169 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = x_40.x_WaveAndDistance;
  let x_176 : vec4<f32> = in_POSITION0;
  let x_178 : vec2<f32> = ((-(vec2<f32>(x_169.x, x_169.z)) * vec2<f32>(x_173.z, x_173.z)) + vec2<f32>(x_176.x, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_179.y, x_178.y, x_179.w);
  let x_183 : vec4<f32> = in_POSITION0;
  let x_187 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_183.y, x_183.y, x_183.y) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_193 : vec4<f32> = u_xlat1;
  let x_196 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + x_196);
  let x_200 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_202 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.z, x_202.z, x_202.z)) + x_205);
  let x_207 : vec3<f32> = u_xlat3;
  let x_210 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat3 = (x_207 + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec3<f32> = u_xlat3;
  let x_216 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  vs_TEXCOORD2.w = 32.0f;
  let x_223 : vec3<f32> = in_NORMAL0;
  let x_225 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_223, vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_229 : vec3<f32> = in_NORMAL0;
  let x_231 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_229, vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_236 : vec3<f32> = in_NORMAL0;
  let x_238 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_236, vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat10;
  u_xlat10 = max(x_248, 1.17549435e-37f);
  let x_251 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_251);
  let x_255 : f32 = u_xlat10;
  let x_257 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_255, x_255, x_255) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec3<f32> = u_xlat3;
  let x_267 : vec3<f32> = x_264.x_WorldSpaceCameraPos;
  let x_268 : vec3<f32> = (-(x_260) + x_267);
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : f32 = u_xlat10;
  u_xlat10 = max(x_276, 1.17549435e-37f);
  let x_278 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_278);
  let x_282 : f32 = u_xlat10;
  let x_284 : vec4<f32> = u_xlat2;
  vs_TEXCOORD4 = (vec3<f32>(x_282, x_282, x_282) * vec3<f32>(x_284.x, x_284.y, x_284.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_291 : vec3<f32> = u_xlat3;
  let x_299 : vec4<f32> = x_297.x_MainLightWorldToShadow[0i][1i];
  let x_301 : vec3<f32> = (vec3<f32>(x_291.y, x_291.y, x_291.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec4<f32> = x_297.x_MainLightWorldToShadow[0i][0i];
  let x_307 : vec3<f32> = u_xlat3;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec4<f32> = x_297.x_MainLightWorldToShadow[0i][2i];
  let x_318 : vec3<f32> = u_xlat3;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec3<f32> = ((vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_318.z, x_318.z, x_318.z)) + vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_323.x, x_323.y, x_323.z, x_324.w);
  let x_327 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = x_297.x_MainLightWorldToShadow[0i][3i];
  let x_332 : vec3<f32> = (vec3<f32>(x_327.x, x_327.y, x_327.z) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  vs_TEXCOORD6.w = 0.0f;
  let x_337 : f32 = in_POSITION0.y;
  u_xlat1.y = x_337;
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = x_40.x_CameraPosition;
  let x_345 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_355 : f32 = u_xlat1.x;
  let x_358 : f32 = x_40.x_WaveAndDistance.w;
  u_xlat1.x = (-(x_355) + x_358);
  let x_362 : f32 = u_xlat1.x;
  let x_364 : f32 = u_xlat1.x;
  u_xlat1.x = (x_362 + x_364);
  let x_369 : f32 = u_xlat1.x;
  let x_371 : f32 = x_40.x_CameraPosition.w;
  vs_TEXCOORD7.w = (x_369 * x_371);
  let x_375 : f32 = vs_TEXCOORD7.w;
  vs_TEXCOORD7.w = clamp(x_375, 0.0f, 1.0f);
  let x_380 : vec4<f32> = x_40.x_WavingTint;
  let x_384 : vec3<f32> = (vec3<f32>(x_380.x, x_380.y, x_380.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_387 : vec4<f32> = u_xlat0;
  let x_389 : vec4<f32> = u_xlat1;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.x, x_387.x) * vec3<f32>(x_389.x, x_389.y, x_389.z)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_395 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = in_COLOR0;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec4<f32> = u_xlat1;
  let x_408 : vec3<f32> = (vec3<f32>(x_404.x, x_404.y, x_404.z) + vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_409 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec3<f32> = u_xlat3;
  let x_414 : vec4<f32> = x_264.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_411.y, x_411.y, x_411.y, x_411.y) * x_414);
  let x_417 : vec4<f32> = x_264.unity_MatrixVP[0i];
  let x_418 : vec3<f32> = u_xlat3;
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_417 * vec4<f32>(x_418.x, x_418.x, x_418.x, x_418.x)) + x_421);
  let x_424 : vec4<f32> = x_264.unity_MatrixVP[2i];
  let x_425 : vec3<f32> = u_xlat3;
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_424 * vec4<f32>(x_425.z, x_425.z, x_425.z, x_425.z)) + x_428);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec4<f32> = x_264.unity_MatrixVP[3i];
  gl_Position = (x_434 + x_436);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD7_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6, vs_TEXCOORD7, gl_Position);
}

